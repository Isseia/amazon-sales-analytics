-- Creation of Clean Table
CREATE TABLE sales_report_clean AS
SELECT
	record_id
    order_id,
    order_date,
    order_status,
    fulfilment,
    sales_channel,
    ship_service_level,
    style,
    sku,
    category,
    size,
    asin,
    courier_status,
    quantity,
    amount,
    ship_city,
    ship_state,
    ship_country,
    ship_postal_code,
	promotion_ids,
    b2b,
    fulfilled_by, 
FROM sales_report
WHERE order_id IS NOT NULL;