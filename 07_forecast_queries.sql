-- Size Demand Analysis
SELECT
    size,
    SUM(quantity) units_sold,
    CAST(SUM(amount) AS DECIMAL(10,2)) revenue
FROM sales_report_clean
GROUP BY size
ORDER BY revenue DESC;

-- Category Performance Matrix
SELECT
    category,
    COUNT(*) orders,
    SUM(quantity) units,
    CAST(SUM(amount) AS DECIMAL(10,2)) revenue,
    CAST(AVG(amount) AS DECIMAL(10, 2)) avg_order_value
FROM sales_report_clean
GROUP BY category
ORDER BY revenue DESC;

-- Merchant vs Amazon Fulfillment
SELECT
    fulfilment,
    COUNT(*) orders,
    CAST(SUM(amount) AS DECIMAL(10,2)) revenue,
    AVG(amount) avg_order,
    SUM(CASE WHEN status ILIKE '%cancel%' THEN 1 ELSE 0 END) cancelled
FROM sales_report_clean
GROUP BY fulfilment;

-- Sales Channel Analysis
SELECT
    sales_channel,
    COUNT(*) orders,
    CAST(SUM(amount) AS DECIMAL(10,2)) revenue,
FROM sales_report_clean
GROUP BY sales_channel;