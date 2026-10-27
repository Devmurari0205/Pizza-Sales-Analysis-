# 🍕 Pizza Sales Analysis Dashboard

An end-to-end pizza sales analysis project using **Excel and SQL** to understand revenue, order volume, customer ordering patterns, pizza category and size performance, and best- and worst-selling products.

> **Project type:** Data Analytics / Sales Reporting  
> **Tools:** Microsoft Excel, SQL  
> **Dataset:** 48,620 transaction-line records in the `pizza_sales` worksheet  
> **Reporting period shown in the workbook:** 2015  
> **Primary deliverable:** Interactive-style Excel sales dashboard supported by SQL analysis queries

---

## 📌 Project Overview

The purpose of this project is to turn raw pizza order data into useful sales insights. The workbook contains transaction-level data, KPI calculations, trend summaries, and a dashboard with charts for daily and hourly orders, category and size sales mix, category-level pizza quantities, and best/worst sellers.

The SQL scripts calculate core business KPIs and provide queries for analyzing order trends and product performance. The Excel workbook presents the results visually so a viewer can quickly identify busy periods and the products/categories contributing most to sales.

## 🎯 Business Questions

- What are total revenue, total orders, and total pizzas sold?
- What is the average order value and average number of pizzas per order?
- Which days of the week have the highest order volume?
- At what hours are orders most frequent?
- What share of revenue comes from each pizza category?
- What share of revenue comes from each pizza size?
- Which pizza categories account for the most pizzas sold?
- Which pizza names are the top and bottom sellers by quantity?

## 🧰 Tools & Skills Demonstrated

- **Excel:** KPI calculations, workbook organization, pivot-style summaries, charts, dashboard layout, date/month filtering
- **SQL:** `SUM`, `COUNT(DISTINCT ...)`, `CAST`, `GROUP BY`, `ORDER BY`, subqueries, date/time functions, top/bottom product ranking
- **Data analysis:** KPI reporting, trend analysis, category and size mix, product ranking, business insight communication
- **Reporting:** Turning transaction data into a dashboard for operational decision-making

## 📂 Recommended GitHub Folder Structure

```text
pizza-sales-analysis/
├── README.md
├── dashboard/
│   ├── Pizza_sales_dashboard.xlsx
│   └── pizza_sales_dashboard.png
├── data/
│   └── README.md
├── sql/
    ├── pizza_sales_analysis.sql
    └── pizza_sales_queries_reference.docx
```

### What belongs in each folder?

- `dashboard/` — the Excel workbook and a clean screenshot of the final dashboard.
- `data/` — dataset documentation. Add the raw dataset only if you have permission to redistribute it; otherwise explain how to obtain it.
- `sql/` — the SQL script and, optionally, the original query notes document.
- `docs/` — assumptions, definitions, validation notes, and any extra project documentation.
- `README.md` — project summary, KPIs, findings, instructions, and screenshots.

**Before uploading:** rename files consistently (avoid spaces and spelling errors), add the dashboard screenshot as `pizza_sales_dashboard.png`, and make sure the SQL file's database dialect is clearly stated.

## 📊 Dashboard Preview

Save the final dashboard screenshot in the repository as `dashboard/pizza_sales_dashboard.png`, then this image will display on GitHub:

```markdown
![Pizza Sales Dashboard](Pizza_sales_dashboard_screenshot.png)

The dashboard includes:
- KPI cards for total revenue, total orders, total pizzas sold, and average order value
- Daily order trend by weekday
- Hourly order trend
- Revenue share by pizza category
- Revenue share by pizza size
- Total pizzas sold by category
- Top 5 and bottom 5 pizzas by quantity
- Date/month filter area

## 📈 Key Metrics

The uploaded Excel workbook shows the following overall KPI values:

| KPI | Value |
|---|---:|
| Total Revenue | **$801,944.70** |
| Total Orders | **21,350** |
| Total Pizzas Sold | **49,574** |
| Average Order Value | **$37.56** |
| Average Pizzas per Order | **2.32** |

*Note: Values above are read from the provided workbook. The dashboard screenshot appears to show the same figures, rounded for display.*

## 🔍 Findings From the Workbook

### Order trends
- **Friday** has the highest daily order count in the workbook's weekday summary (**3,538**).
- **Thursday** is the next-highest weekday in the summary (**3,239**).
- The busiest hours are around **12:00 and 13:00**, with **17:00–19:00** also showing strong order volume.
- Order volume is lowest at the beginning and end of the displayed operating-day range.

### Revenue mix by category
The workbook's category revenue-share summary shows:
- **Classic:** approximately **26.91%**
- **Supreme:** approximately **25.46%**
- **Chicken:** approximately **23.96%**
- **Veggie:** approximately **23.68%**

Classic is the largest category by revenue share in this summary.

### Revenue mix by size
The workbook's size revenue-share summary shows:
- **Large:** approximately **45.89%**
- **Medium:** approximately **30.49%**
- **Regular:** approximately **21.77%**
- **X-Large:** approximately **1.72%**
- **XX-Large:** approximately **0.12%**

Large pizzas account for the largest share of revenue in the workbook's size summary.

### Quantity sold by category
The workbook reports the following pizza quantities by category:

| Category | Pizzas Sold |
|---|---:|
| Classic | 14,888 |
| Supreme | 11,987 |
| Veggie | 11,649 |
| Chicken | 11,050 |
| **Total** | **49,574** |

### Product ranking
The workbook's top-five summary lists:
1. The Classic Deluxe Pizza — **2,453**
2. The Barbecue Chicken Pizza — **2,432**
3. The Hawaiian Pizza — **2,422**
4. The Pepperoni Pizza — **2,418**
5. The Thai Chicken Pizza — **2,371**

The bottom-five summary lists:
1. The Brie Carre Pizza — **490**
2. The Mediterranean Pizza — **934**
3. The Calabrese Pizza — **937**
4. The Spinach Supreme Pizza — **950**
5. The Soppressata Pizza — **961**

These rankings are based on the workbook's quantity summaries.

## 🗃️ Data Dictionary

The `pizza_sales` worksheet contains 48,620 data rows and 14 columns:

| Column | Description |
|---|---|
| `pizza_id` | Identifier for a pizza order line/item |
| `order_id` | Order identifier; multiple rows may belong to one order |
| `Total_Orders` | Helper field used in the workbook's order-count calculations |
| `pizza_name_id` | Short identifier for the pizza name |
| `quantity` | Number of pizzas in the line |
| `order_date` | Date the order was placed |
| `Order_day` | Weekday helper field derived from `order_date` |
| `order_time` | Time the order was placed |
| `unit_price` | Price per pizza unit |
| `total_price` | Line total used for revenue calculations |
| `pizza_Size` | Pizza size |
| `pizza_category` | Pizza category |
| `pizza_ingredients` | Ingredient description |
| `pizza_name` | Full pizza name |

The workbook uses `unit_price` in its KPI sheet to calculate total revenue, while the SQL examples use `total_price`. These should be checked against each other during validation; in the supplied data, `total_price` is the line-level revenue field used by the SQL analysis.

## 🧮 SQL Analysis Included

The supplied SQL and query-notes document cover these analyses:

1. Total revenue
2. Average order value
3. Total pizzas sold
4. Total distinct orders
5. Average pizzas per order
6. Daily order trend
7. Hourly order trend
8. Revenue percentage by pizza category
9. Revenue percentage by pizza size
10. Pizzas sold by category (the reference document filters to February)
11. Top five pizzas by quantity
12. Bottom five pizzas by quantity
13. Examples of filtering weekday trends by month or quarter

### Database dialect note

The supplied `.sql` file uses SQL Server-specific syntax such as `DATENAME`, `DATEPART`, and `TOP`. It is **not fully PostgreSQL-compatible as written**. If you run it in PostgreSQL, convert those functions to PostgreSQL equivalents (for example, `EXTRACT`, `TO_CHAR`, and `LIMIT`). Keep the script labeled as SQL Server unless you have converted and tested it for PostgreSQL.

### Query validation notes

Before publishing, check these issues in the original SQL file:
- The query labeled “Total pizza by pizza category” actually ranks `pizza_name` and sorts ascending; that returns the lowest-selling pizza names, not category totals.
- The “Top 5 Best Seller” query sorts ascending, which returns the bottom five rather than the top five.
- The “Bottom 5 Worst” query has no `TOP 5` limit in the supplied script.
- The SQL examples use `total_price`, while the workbook KPI sheet labels its revenue calculation as `Sum of unit_price`. Confirm the intended revenue field and use it consistently across the dashboard and SQL.
- The reference query document contains a quarter-filter note that appears inconsistent: `DATEPART(QUARTER, order_date) = 1` means the first quarter, not the third quarter.

These are documentation/validation items to address before describing the SQL as fully tested.

## ▶️ How to Use This Project

1. Download or clone this repository.
2. Open `dashboard/Pizza_sales_dashboard.xlsx` in Microsoft Excel.
3. Review the `Dashboard`, `KPI`, `Trend for Total Ordes`, and `pizza_sales` worksheets.
4. Open the SQL script in a query editor connected to a database containing the `pizza_sales` table.
5. Confirm the script's SQL dialect and table/column names before executing.
6. Compare SQL output with the Excel KPI and dashboard values.
7. Use the dashboard to explore sales trends and product/category performance.

## 💡 Business Recommendations

Based on the patterns shown in this workbook:
- Plan staffing and preparation capacity for Friday and the lunch/evening peaks.
- Keep high-performing Classic category products visible in promotions and menu placement.
- Review inventory and promotion strategy for Large pizzas, which have the highest revenue share.
- Investigate low-volume pizzas to determine whether they need repositioning, recipe/menu review, or targeted promotions.
- Compare weekday/hour trends with ingredient waste, staffing cost, and margin data before making operational changes.

These are initial recommendations from sales patterns only. Profit margins, ingredient costs, discounts, cancellations, and customer satisfaction are not included in the current analysis, so they should be checked before making final business decisions.

## 🚀 Future Improvements

- Publish a PostgreSQL-compatible version of the SQL script and test every query.
- Add month, quarter, and date-range filtering consistently across SQL and Excel.
- Validate revenue totals using `SUM(total_price)` and document the chosen revenue definition.
- Add profit and gross-margin analysis if cost data becomes available.
- Add a data-cleaning/quality-check section.
- Improve accessibility with clear chart titles, units, and consistent number formats.
- Add screenshots of query outputs and a short demo GIF/video.

## 👤 Author

**Harsh Devmurari**

- GitHub: https://github.com/Devmurari0205
- LinkedIn: https://www.linkedin.com/in/harsh-devmurari-895b98236/

---

*This project is intended as a data analytics portfolio project demonstrating sales KPI reporting, SQL querying, Excel dashboarding, and business insight communication.*
