-- Check for duplicates
SELECT
    order_id, 
	COUNT(*)
FROM sales_report
GROUP BY order_id
HAVING COUNT(*) > 1;

-- Check for missing data
SELECT *
FROM sales_report
WHERE COALESCE (
	 courier_status,  
	 amount, 
	 currency,  
	 promotion_ids,  
	 fulfilled_by,  
	 ship_city,  
	 ship_state,  
     ship_country,   
  	 ship_postal_code) IS NULL;

-- Check negative quantities
SELECT *
FROM sales_report
WHERE  quantity < 0;

-- Check for invalid dates
SELECT
    MIN(order_date),
    MAX(order_date)
FROM sales_report;

-- Check of categories
SELECT
    category,
    COUNT(*)
FROM amazon_sale_report
GROUP BY category
ORDER BY COUNT(*) DESC;

-- Check for Standarlize courier status
SELECT DISTINCT courier_status
FROM sales_report
ORDER BY courier_status;

-- Check for B2B Values
SELECT
    b2b,
    COUNT(*)
FROM sales_report
GROUP BY b2b;

-- Product Consistency Check
SELECT
    sku,
    COUNT(DISTINCT style) AS styles,
    COUNT(DISTINCT category) AS categories,
    COUNT(DISTINCT size) AS sizes
FROM sales_report_clean
GROUP BY sku
HAVING
    COUNT(DISTINCT style)>1
    OR COUNT(DISTINCT category)>1;
