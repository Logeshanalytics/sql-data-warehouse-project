# 🏗️ SQL Data Warehouse Project (MySQL)

> A comprehensive, end-to-end Data Warehouse built on **MySQL** using the **Medallion Architecture** — covering ETL pipelines, data modeling, and SQL-based analytics for business intelligence.

---

## 📌 Project Overview

This project demonstrates a production-style data warehousing solution that consolidates sales data from multiple source systems (ERP and CRM), transforms it through layered pipelines, and surfaces actionable business insights through SQL-based reporting.

Built as a **portfolio project**, it showcases industry-standard practices in:
- Data Engineering (ETL design, layer architecture)
- Data Modeling (Star Schema, Fact & Dimension tables)
- Data Analytics (KPIs, trend analysis, customer segmentation)

---

## 🏛️ Architecture: Medallion Architecture

```
Source Systems (CSV Files)
        │
        ▼
┌─────────────────┐
│   BRONZE LAYER  │  ← Raw ingestion, no transformation
│  (Raw Data)     │
└────────┬────────┘
         │
         ▼
┌─────────────────┐
│   SILVER LAYER  │  ← Cleansed, standardized, normalized
│  (Clean Data)   │
└────────┬────────┘
         │
         ▼
┌─────────────────┐
│   GOLD LAYER    │  ← Star schema, business-ready analytics
│  (Analytics)    │
└─────────────────┘
```

| Layer | Description |
|-------|-------------|
| **Bronze** | Raw data loaded as-is from ERP and CRM CSV files into MySQL staging tables |
| **Silver** | Data cleansing, deduplication, type standardization, and normalization |
| **Gold** | Star schema with Fact and Dimension tables optimized for analytical queries |

---

## 📂 Repository Structure

```
sql-data-warehouse-project/
│
├── datasets/                   # Source data files
│   ├── erp_data.csv            # ERP system export
│   └── crm_data.csv            # CRM system export
│
├── docs/                       # Project documentation
│   ├── requirements.md         # Business & technical requirements
│   ├── data_catalog.md         # Field descriptions and metadata
│   └── naming-conventions.md  # Table, column, and file naming standards
│
├── scripts/                    # All SQL scripts
│   ├── bronze/                 # Raw data load scripts
│   ├── silver/                 # Transformation and cleansing scripts
│   └── gold/                   # Star schema creation and analytics
│
└── README.md
```

---

## 🔧 Tech Stack

| Tool | Purpose |
|------|---------|
| **MySQL** | Core database engine |
| **MySQL Workbench** | Schema design and query development |
| **Draw.io** | Data architecture & flow diagrams |
| **Git & GitHub** | Version control and collaboration |
| **CSV Files** | Source data (ERP + CRM systems) |

---

## 📐 Data Model: Star Schema (Gold Layer)

The Gold Layer implements a **Star Schema** designed for fast analytical querying:

- **Fact Table:** `fact_sales` — contains transactional sales metrics (revenue, quantity, order dates)
- **Dimension Tables:**
  - `dim_customer` — customer demographics and segments
  - `dim_product` — product categories, subcategories, and pricing
  - `dim_date` — date hierarchy for time-based analysis

---

## 🔄 ETL Pipeline Summary

### Bronze Layer — Raw Ingestion
- Load CSV files directly into MySQL staging tables
- No transformation applied; data preserved as-is
- Tables prefixed: `bronze_`

### Silver Layer — Cleansing & Transformation
- Handle NULL values, duplicates, and data type mismatches
- Standardize formats (dates, phone numbers, country codes)
- Normalize categorical fields
- Tables prefixed: `silver_`

### Gold Layer — Business-Ready Data
- Build Fact and Dimension tables using transformed Silver data
- Apply business logic and calculated metrics
- Optimized for JOIN performance and aggregation queries
- Tables prefixed: `gold_` (or `dim_` / `fact_`)

---

## 📊 Analytics & Reporting

The project includes SQL-based analytics across three key business domains:

### 🧍 Customer Analysis
- Customer lifetime value (CLV)
- Purchase frequency and recency
- Customer segmentation by geography and behavior

### 📦 Product Performance
- Top-selling products by revenue and volume
- Product category contribution to total sales
- Inventory turnover analysis

### 📈 Sales Trends
- Monthly and yearly revenue trends
- Year-over-year (YoY) growth comparison
- Seasonal demand patterns

---

## 🚀 Getting Started

### Prerequisites
- MySQL 8.0+ installed
- MySQL Workbench (or any SQL client)
- Git

### Setup Instructions

```bash
# 1. Clone the repository
git clone https://github.com/Logeshanalytics/sql-data-warehouse-project.git
cd sql-data-warehouse-project

# 2. Open MySQL Workbench and create the database
CREATE DATABASE data_warehouse;
USE data_warehouse;

# 3. Run scripts in order
-- Step 1: Bronze Layer
source scripts/bronze/load_bronze.sql;

-- Step 2: Silver Layer
source scripts/silver/transform_silver.sql;

-- Step 3: Gold Layer
source scripts/gold/build_gold.sql;

# 4. Run analytics queries
source scripts/gold/analytics_reports.sql;
```

---

## 📋 Data Sources

| Source | Description | Format |
|--------|-------------|--------|
| ERP System | Sales transactions, product info, order records | CSV |
| CRM System | Customer demographics, contact details, segments | CSV |

---

## 🎯 Key Skills Demonstrated

- ✅ **ETL Design** — Multi-layer pipeline from raw ingestion to analytics-ready data
- ✅ **Data Modeling** — Star schema with optimized Fact and Dimension tables
- ✅ **SQL Proficiency** — Complex queries, window functions, aggregations, CTEs
- ✅ **Data Cleaning** — NULL handling, deduplication, standardization
- ✅ **Database Design** — Indexing strategies, table relationships, naming conventions
- ✅ **Documentation** — Architecture diagrams, data catalog, requirements spec

---

## 👤 Author

**Logesh** — Aspiring Data Analyst  
📧 Logesh Purushothaman  
🔗 https://in.linkedin.com/in/logesh-purushothaman  
🐙 [GitHub][(https://github.com/Logeshanalytics)](https://github.com/Logeshanalytics)

---

## 📄 License

This project is open-source and available under the [MIT License](LICENSE).

---

> ⭐ If you found this project helpful, please give it a star!
