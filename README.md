# Footwear Sales Analytics Dashboard (2015–2025)

**Live Tableau Dashboard:**  
🔗 [View on Tableau Public →](https://public.tableau.com/app/profile/lux.yogasegaran/viz/FootwearSalesDashboard_17628641426450/SalesDashboard)

---

![Footwear Sales Dashboard Preview](visuals/dashboard_preview.png)

---

## Overview
This project simulates a **decade of sales data (2015–2025)** for a global footwear retailer operating across the **UK, Europe, and Canada**.  
It demonstrates advanced data preparation, transformation, and visualization skills — from synthetic data generation to interactive KPI dashboards.  

The goal was to create a **realistic business intelligence solution** that enables regional managers to track trends in **sales, profit, and quantity sold** by **year, brand, style, and location.**

---

## Key Features
- **10 years of global sales data** across 27 retail locations  
- Over **200,000 transactions** and **30,000 unique customers**  
- Dynamic filtering by **brand, colorway, style, year, and country**  
- Automated KPI calculations for:
  - Year-over-year **Sales, Profit, and Quantity**
  - **Discounted vs Full-Price** product performance
  - Category and Brand breakdowns
- Interactive **trend analysis** visualizing performance by week, month, and year  

---

## Skills & Tools Demonstrated
**Data Engineering / Cleaning**
- Python (pandas, numpy) for synthetic dataset creation  
- MySQL for data validation, schema management, and type correction  
- UTF-8 data encoding and normalization  

**Data Visualization**
- Tableau (Public Edition)
  - Dashboard design (KPI cards, trend lines, parameter filters)
  - Relationships across multiple data sources (Orders, Customers, Locations, Products)
  - Consistent theme design and filter UX  

**Data Modeling**
- Relational schema design for retail transactions  
- Joined datasets across Orders, Products, Customers, and Locations  
- Year-over-year and week-over-week calculated fields  

**Other**
- GitHub for version control & documentation  
- CSV data versioning and clean pipeline handoff  

---

## Project Structure
Footwear-Sales-Dashboard/
  data/
    Orders2.csv
    Customers2.csv
    Products2.csv
    Locations2.csv
  scripts/
    Order Cleaning Queries.sql
  tableau/
    Footwear Sales Dashboard.twbx
  visuals/
    dashboard_preview.png
  README.md

---

## Dashboard Highlights
| Metric | Description |
|--------|--------------|
| **Total Sales / Profit / Quantity** | KPI cards with YoY comparison and trend lines |
| **Sales by Style** | Highlights customer buying preferences |
| **Sales by Brand** | Compares major footwear brands (Nike, Adidas, ASICS, etc.) |
| **Sales & Profit Trends** | Week-by-week performance with dynamic filters |
| **Interactive Filters** | Brand, Product Model, Footwear Type, Colorway, Country |

---

## Next Steps
- Add product returns / refunds dataset for profit margin tracking  
- Extend model to include **forecasting** (2026–2027) with Python or Tableau  
- Publish an automated ETL pipeline in Airflow or dbt  

---

## Author
**Lux Yogasegaran**  
Data Analyst | UX Designer | BI Developer  
📍 Copenhagen, Denmark  
🔗 [LinkedIn](https://www.linkedin.com/in/luxyogasegaran/) | [GitHub](https://github.com/luxyoga)
