# **Sales Data Warehouse (SQL Server + SSIS)**

## **📌 Project Overview**
This project focuses on building a **Sales Data Warehouse** to support analytical queries and business intelligence use cases.  
The goal is to consolidate data from an **OLTP SQL Server source** into a structured analytical model optimized for reporting, trend analysis, and decision-making.

## **🎯 Objectives**
- Centralize sales data from multiple entities
- Enable performant analytical queries
- Establish a clean dimensional model (Star Schema)
- Automate data loading using SSIS ETL pipelines

## **🏗 Architecture**
The Data Warehouse follows a **Star Schema** consisting of:

### **Fact Table**
- `FactSales`

### **Dimension Tables**
- `DimCustomer`
- `DimProduct`
- `DimLocation`
- `DimShipMode`
- `DimDate`

This structure improves query performance and simplifies BI analytics.

## **🗄 Source System (OLTP)**
- **Type:** SQL Server OLTP  
- **Contains:** transactional sales data  
- **Purpose:** Used as input for the ETL pipeline  

## **⚙ ETL Pipeline (SSIS)**
ETL was implemented using **SQL Server Integration Services (SSIS)** with the following steps:

1. **Extract:** Source data pulled from SQL Server OLTP  
2. **Transform:**  
   - Lookups for dimension surrogate keys  
   - Data cleansing & standardization  
   - Date handling via `DimDate`  
3. **Load:**  
   - Dimensions populated first  
   - Fact table loaded subsequently  

## **📦 SSIS Packages**
The ETL solution contains individual packages for each dimensional and fact table:

| Package | Description |
|--------|-------------|
| `DimCustomer.dtsx` | Loads customer dimension data |
| `DimProduct.dtsx` | Loads product dimension data |
| `DimLocation.dtsx` | Loads location dimension data |
| `DimShipMode.dtsx` | Loads shipping mode data |
| `DimDate.dtsx` | Populates the date dimension |
| `FactSales.dtsx` | Loads the main Fact Sales table |

*Packages run individually or orchestrated through SSIS project configuration.*

## **🛠 Tech Stack**
| Component | Technology |
|---|---|
| Database Engine | SQL Server |
| Data Warehouse | SQL Server |
| ETL | SSIS (SQL Server Integration Services) |
| Source System | SQL Server OLTP |

## **🚀 How to Run**
1. Restore / Create the **OLTP SQL Server Database**
2. Restore / Create the **Data Warehouse SQL Server Database**
3. Open the SSIS Project in **Visual Studio**
4. Configure the connection managers (source & destination)
5. Execute dimension packages in the correct order
6. Execute the `FactSales` package

## 👨‍💻 Author
**Mostafa ElRkhawy**  
_Data Analyst | Python | Power BI | SQL | Excel_

📧 **Contact:** [LinkedIn Profile](https://www.linkedin.com/in/mostafa-elrkhawy) | [Gmail](mailto:mostafaelrkhawy7@gmail.com)
