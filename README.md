# Sales Trend Analysis Using Aggregations

## Objective

The objective of this task is to analyze monthly sales revenue and order volume using SQL aggregation functions.

## Dataset

The dataset used for this project is the **Online Sales Data** dataset.

It contains 240 sales transactions from:

- January 1, 2024
- August 27, 2024

### Main Columns

- Transaction ID
- Date
- Product Category
- Product Name
- Units Sold
- Unit Price
- Total Revenue
- Region
- Payment Method

## Tools Used

- MySQL
- MySQL Workbench
- SQL

## SQL Concepts Used

- SELECT
- SUM()
- COUNT()
- COUNT(DISTINCT)
- YEAR()
- MONTH()
- GROUP BY
- ORDER BY
- LIMIT
- ROUND()
- MIN()
- MAX()

## Analysis Performed

### 1. Monthly Revenue

Monthly revenue was calculated using the `SUM()` aggregate function.

### 2. Monthly Order Volume

Monthly order volume was calculated using:

`COUNT(DISTINCT Transaction ID)`

### 3. Top 3 Months by Sales

The top three months were identified using `ORDER BY` in descending order and `LIMIT 3`.

### 4. Lowest 3 Months by Sales

The three lowest-revenue months were identified using ascending order.

### 5. Overall Sales Metrics

The total revenue, total number of orders, and average order value were calculated.

## Monthly Sales Results

| Year | Month | Monthly Revenue | Order Volume |
|------|-------|-----------------|--------------|
| 2024 | 1 | 14548.32 | 31 |
| 2024 | 2 | 10803.37 | 29 |
| 2024 | 3 | 12849.24 | 31 |
| 2024 | 4 | 12451.69 | 30 |
| 2024 | 5 | 8455.49 | 31 |
| 2024 | 6 | 7384.55 | 30 |
| 2024 | 7 | 6797.08 | 31 |
| 2024 | 8 | 7278.11 | 27 |

## Key Findings

- The total revenue generated during the analyzed period was **80,567.85**.
- The dataset contains **240 unique transactions**.
- **January 2024** generated the highest monthly revenue of **14,548.32**.
- **July 2024** generated the lowest monthly revenue of **6,797.08**.
- The top three months by revenue were **January, March, and April**.
- Monthly revenue generally declined from January through July, with a small increase in August.
- Order volume remained relatively consistent across the months, ranging from **27 to 31 orders**.

## Conclusion

The SQL analysis shows that sales revenue was strongest at the beginning of the year, particularly in January. Revenue then generally declined through July, followed by a small recovery in August.

The analysis demonstrates how SQL aggregation functions such as `SUM()` and `COUNT(DISTINCT)` can be combined with `GROUP BY` and `ORDER BY` to identify monthly sales trends and compare performance across different periods.

## Files Included

- `Online Sales Data.csv` - Dataset used for the analysis
- `sales_trend_analysis.sql` - SQL queries used for the analysis
- `monthly_sales_results.csv` - Final monthly revenue and order volume results
