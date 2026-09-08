CREATE DATABASE sales_analysis;
USE sales_analysis;
CREATE TABLE online_sales (
    transaction_id INT,
    order_date DATE,
    product_category VARCHAR(100),
    product_name VARCHAR(150),
    units_sold INT,
    unit_price DECIMAL(10,2),
    total_revenue DECIMAL(10,2),
    region VARCHAR(100),
    payment_method VARCHAR(50)
);
SELECT * FROM sales_analysis.`online sales data`;
SELECT COUNT(*) AS total_records
FROM sales_analysis.`online sales data`;

DESCRIBE sales_analysis.`online sales data`;
USE sales_analysis;
SELECT *
FROM `online sales data`
LIMIT 10;
USE sales_analysis;

SELECT `Date`
FROM `online sales data`
LIMIT 10;
SELECT
    MIN(`Date`) AS first_date,
    MAX(`Date`) AS last_date
FROM `online sales data`;
USE sales_analysis;

SELECT
    YEAR(`Date`) AS year,
    MONTH(`Date`) AS month,
    SUM(`Total Revenue`) AS monthly_revenue,
    COUNT(DISTINCT `Transaction ID`) AS order_volume
FROM `online sales data`
GROUP BY YEAR(`Date`), MONTH(`Date`)
ORDER BY year, month;
USE sales_analysis;

SELECT
    YEAR(`Date`) AS year,
    MONTH(`Date`) AS month,
    ROUND(SUM(`Total Revenue`), 2) AS monthly_revenue,
    COUNT(DISTINCT `Transaction ID`) AS order_volume
FROM `online sales data`
GROUP BY YEAR(`Date`), MONTH(`Date`)
ORDER BY year, month;
SELECT
    YEAR(`Date`) AS year,
    MONTH(`Date`) AS month,
    ROUND(SUM(`Total Revenue`), 2) AS monthly_revenue
FROM `online sales data`
GROUP BY YEAR(`Date`), MONTH(`Date`)
ORDER BY monthly_revenue DESC
LIMIT 3;

SELECT
    YEAR(`Date`) AS year,
    MONTH(`Date`) AS month,
    ROUND(SUM(`Total Revenue`), 2) AS monthly_revenue
FROM `online sales data`
GROUP BY YEAR(`Date`), MONTH(`Date`)
ORDER BY monthly_revenue ASC
LIMIT 3;

SELECT
    ROUND(SUM(`Total Revenue`), 2) AS total_revenue
FROM `online sales data`;

SELECT
    COUNT(DISTINCT `Transaction ID`) AS total_orders
FROM `online sales data`;
SELECT
    ROUND(
        SUM(`Total Revenue`) / COUNT(DISTINCT `Transaction ID`),
        2
    ) AS average_order_value
FROM `online sales data`;

SELECT
    YEAR(`Date`) AS year,
    MONTH(`Date`) AS month,
    ROUND(SUM(`Total Revenue`), 2) AS monthly_revenue
FROM `online sales data`
GROUP BY YEAR(`Date`), MONTH(`Date`)
ORDER BY monthly_revenue DESC
LIMIT 1;
SELECT
    YEAR(`Date`) AS year,
    MONTH(`Date`) AS month,
    ROUND(SUM(`Total Revenue`), 2) AS monthly_revenue
FROM `online sales data`
GROUP BY YEAR(`Date`), MONTH(`Date`)
ORDER BY monthly_revenue ASC
LIMIT 1;

