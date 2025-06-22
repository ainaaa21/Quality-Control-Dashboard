# 📋 Quality Control Dashboard (Power BI)

## 📌 Overview
During my internship I built this dashboard to streamline the **lot-status verification** process for the Quality Assurance (QA) team.  QA engineers previously cross-checked multiple internal systems for every production lot—a manual, time-consuming, and error-prone task.

Using **SQL**, I extracted production data from an on-premise **Teradata** warehouse, and **imported multidimensional data directly from SQL Server Analysis Services (SSAS)** into Power BI. The result was a centralized, interactive report that enabled faster and more reliable decisions at the QA gate.

---

## 🎯 Problem Statement

QA engineers needed to verify lot readiness by checking status across **3 different systems** (MDR, IBD, and CMT), leading to:
- Delays in lot approval and shipment
- Inconsistent decision-making due to manual tracking
- Risk of human error in critical quality checks

---

## ✅ Solution
The **E-QC Dashboard** addresses these issues by:  
- 📥 **Combining** data from Teradata (via SQL) and SSAS (via direct import)  
- ⚙️ Applying **automated DAX logic** to classify lot status (pass / fail)  
- 🧭 Providing a **single interface** for real-time QA review  
- 🟢 **Eliminating** multiple manual system checks  

---

## 🛠 Tools & Technologies

| Tool | Purpose |
|------|---------|
| **Power BI** | Dashboard design & data visualization |
| **SQL** | Data extraction from production tables |
| **DAX** | Business logic for lot status calculation |
| **Power Query** | Data transformation & model building |

---

## 📷 Screenshots

![Dashboard Overview](sample-screenshots/dashboard-overview.png)
*Anonymized data used for confidentiality.*

---

## 🔍 Key Features

- ✅ Lot-level pass/fail decision logic using DAX
- 🔎 Drill-down capability into MDR, IBD, and CMT status
- 🧠 Visual indicators for QA personnel to act quickly
- 🔄 Ready for scheduled refresh (via gateway, internal setup)

---

## 📈 Impact

This dashboard reduced manual checking steps by ~40% and helped QA teams make faster, more accurate decisions before product release.

---

## 🔐 Confidentiality Note

*This project was completed during my internship. All data has been recreated or anonymized to protect confidentiality. The logic and visuals shown reflect the real design and decision flow implemented.*

---

## 📁 Repository Contents

| File | Description |
|------|-------------|
| `mock-sql-query.sql` | SQL used to extract base tables |
| `sample-screenshots/` | Blurred dashboard visuals for demo |

---

## 🙋‍♀️ About Me

I’m a Computer Science graduate passionate about **data analytics and automation**. I use tools like Power BI, SQL, and Python to turn raw data into insights and help businesses make better decisions.

[🔗 LinkedIn](https://www.linkedin.com/in/ainamardhiah2107/) 
