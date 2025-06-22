/* 
  Sample SQL Query – Anonymized for Portfolio Use
  This query demonstrates how I used SQL to consolidate lot-level data 
  from multiple sources before loading it into Power BI.
  Table and column names have been changed to protect confidentiality.
*/

SELECT 
    COALESCE(lot.mdr_ref, mdr.mdr_ref) AS mdr_ref,  
    lot.lot_id, 
    evt.affected_lot_list,
    mdr.assembly_lot,
    mdr.title,
    mdr.description,

    CASE 
        -- Check for valid LOT_NUMBER in various columns
        WHEN REGEXP_SUBSTR(lot.lot_id, '[A-Z]{4}[A-Z0-9]{8}', 1, 1) IS NOT NULL THEN lot.lot_id
        WHEN REGEXP_SUBSTR(evt.affected_lot_list, '[A-Z]{4}[A-Z0-9]{8}', 1, 1) IS NOT NULL THEN evt.affected_lot_list
        WHEN REGEXP_SUBSTR(mdr.assembly_lot, '[A-Z]{4}[A-Z0-9]{8}', 1, 1) IS NOT NULL THEN mdr.assembly_lot
        WHEN REGEXP_SUBSTR(mdr.title, '[A-Z]{4}[A-Z0-9]{8}', 1, 1) IS NOT NULL THEN mdr.title
        WHEN REGEXP_SUBSTR(mdr.description, '[A-Z]{4}[A-Z0-9]{8}', 1, 1) IS NOT NULL THEN mdr.description
        ELSE NULL
    END AS lot_number,

    lot.device_name,
    mdr.status,
    mdr.level,
    mdr.factory_name,
    mdr.factory_type,
    mdr.created_date,
    mdr.modified_date

FROM 
    prod.mdr_lot AS lot
FULL OUTER JOIN 
    prod.mdr AS mdr ON lot.mdr_ref = mdr.mdr_ref
FULL OUTER JOIN 
    prod.event AS evt ON mdr.event_id = evt.event_id

WHERE 
    mdr.factory_type = 'Final Manufacturing'
    AND EXTRACT(YEAR FROM mdr.created_date) BETWEEN EXTRACT(YEAR FROM CURRENT_DATE) - 5 AND EXTRACT(YEAR FROM CURRENT_DATE)

ORDER BY
    mdr.created_date DESC;
