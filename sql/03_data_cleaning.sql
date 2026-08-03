-- Viewing of NULL values for each rows
SELECT
    COUNT(*) AS total_rows,
    COUNT(*) - COUNT(order_id) AS missing_order_id,
    COUNT(*) - COUNT(order_date) AS missing_date,
    COUNT(*) - COUNT(order_status) AS missing_status,
	COUNT(*) - COUNT(fulfilment) AS missing_fulfilment,
	COUNT(*) - COUNT(sales_channel) AS missing_channel,
	COUNT(*) - COUNT(ship_service_level) AS missing_service,
	COUNT(*) - COUNT(style) AS missing_style,
	COUNT(*) - COUNT(sku) AS missing_sku,
	COUNT(*) - COUNT(category) AS missing_category,
	COUNT(*) - COUNT(size) AS missing_size,
	COUNT(*) - COUNT(asin) AS missing_asin,
	COUNT(*) - COUNT(courier_status) AS missing_courier,
    COUNT(*) - COUNT(amount) AS missing_amount,
	COUNT(*) - COUNT(quantity) AS missing_quantity,
	COUNT(*) - COUNT(currency) AS missing_currency,
    COUNT(*) - COUNT(ship_city) AS missing_city,
    COUNT(*) - COUNT(ship_state) AS missing_state,
	COUNT(*) - COUNT(ship_country) AS missing_country,
    COUNT(*) - COUNT(ship_postal_code) AS missing_postal_code,
	COUNT(*) - COUNT(promotion_ids) AS missing_promo,
	COUNT(*) - COUNT(b2b) AS missing_b2b,
	COUNT(*) - COUNT(fulfilled_by) as missing_fulfilled_by
FROM sales_report;

-- Checking for duplicates
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

-- Handling missing values
UPDATE sales_report
SET 
	courier_status = COALESCE(courier_status, 'Cancelled'), 
	amount = COALESCE(amount, '0.00'), 
	currency = COALESCE(currency, 'INR'), 
	promotion_ids = COALESCE(promotion_ids, 'No Promotion'),
	fulfilled_by = COALESCE(fulfilled_by, 'Merchant')
WHERE amount ISNULL
	AND currency ISNULL
	OR courier_status ISNULL
	OR promotion_ids ISNULL
	OR fulfilled_by ISNULL

	
-- Handling of blank strings
UPDATE sales_report
SET 
    ship_city = COALESCE(ship_city, 'Unknown City'),
    ship_state = COALESCE(ship_state, 'Unknown State'),
    ship_country = COALESCE(ship_country, 'Unknown Country'),
    ship_postal_code = COALESCE(ship_postal_code, '00000')
WHERE ship_city IS NULL 
  AND ship_state IS NULL 
  AND ship_country IS NULL 
  AND ship_postal_code IS NULL;

-- Handling of Standarlize Text
UPDATE sales_report
SET 
	category = INITCAP(category),
	ship_city = UPPER(ship_city),
	ship_state = UPPER(ship_state),
	ship_country = UPPER(ship_country)

-- Handling of Standarlize courier status
UPDATE sales_report
SET courier_status = INITCAP(courier_status);

-- Drop unnecesssary column
ALTER TABLE sales_report
DROP COLUMN unnamed



SELECT * FROM sales_report_clean

DROP TAB
