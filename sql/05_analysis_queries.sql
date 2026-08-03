-- Order Lifecycle Analysis 
SELECT
    order_status,
    COUNT(*) AS total_orders,
    ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER (),2) AS percentage
FROM sales_report_clean
GROUP BY order_status
ORDER BY total_orders DESC;

-- Revenue Lost Due to Cancellations
SELECT
    CAST(SUM(amount) AS DECIMAL(10,2)) AS cancelled_revenue
FROM sales_report_clean
WHERE order_status ILIKE '%Cancelled%';

SELECT
    SUM(CASE WHEN order_status ILIKE '%Cancellled%' THEN amount ELSE 0 END) AS cancelled_sales,
    CAST(SUM(amount) AS DECIMAL(10, 2)) AS total_sales,
    CAST(
        SUM(CASE WHEN order_status ILIKE '%Cancelled%' THEN amount ELSE 0 END)
        *100.0/SUM(amount) AS DECIMAL(10, 2)
    ) AS percent_lost
FROM sales_report_clean;

-- Shipping Reliability Index
SELECT
    ship_state,
    COUNT(*) total_orders,
    SUM(CASE WHEN order_status ILIKE '%cancel%' THEN 1 ELSE 0 END) cancelled,
    CAST(
        SUM(CASE WHEN order_status ILIKE '%cancel%' THEN 1 ELSE 0 END)
        *100.0/COUNT(*) AS DECIMAL(10, 2)
    ) cancellation_rate
FROM sales_report_clean
GROUP BY ship_state
HAVING COUNT(*) > 30
ORDER BY cancellation_rate DESC;

-- Executive KPI Dashboard
SELECT
    COUNT(*) AS total_orders,
    SUM(quantity) AS units_sold,
    CAST(SUM(amount) AS DECIMAL(10, 2)) AS total_revenue,
    CAST(AVG(amount) AS DECIMAL(10, 2)) AS average_order_value,
    COUNT(DISTINCT sku) AS unique_products,
    COUNT(DISTINCT ship_state) AS states_served,
    CAST(
        SUM(CASE WHEN order_status ILIKE '%cancel%' THEN 1 ELSE 0 END)
        *100.0/COUNT(*) AS DECIMAL(10, 2)
    ) AS cancellation_rate
FROM sales_report_clean;

-- Pareto Analysis (80/20 Rule)
WITH product_sales AS (
    SELECT
        sku,
        SUM(amount) revenue
    FROM sales_report_cl
    GROUP BY sku
),
ranked AS (
    SELECT
        sku,
        revenue,
        SUM(revenue) OVER (ORDER BY revenue DESC) AS cumulative_revenue,
        SUM(revenue) OVER () AS total_revenue
    FROM product_sales
)
SELECT
    sku,
    revenue,
    ROUND(cumulative_revenue * 100.0 / total_revenue,2) AS cumulative_percent
FROM ranked
ORDER BY revenue DESC;

SELECT * FROM sales_report_clean
