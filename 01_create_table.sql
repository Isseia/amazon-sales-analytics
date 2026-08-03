CREATE TABLE sales_report (
    record_id              INT,
    order_id               VARCHAR(30),
    order_date             DATE,
    order_status                 VARCHAR(50),
    fulfilment             VARCHAR(30),
    sales_channel          VARCHAR(50),
    ship_service_level     VARCHAR(30),

    style                  VARCHAR(100),
    sku                    VARCHAR(100),
    category               VARCHAR(50),
    size                   VARCHAR(20),
    asin                   VARCHAR(20),

    courier_status         VARCHAR(50),

    qty                    INTEGER,
    currency               VARCHAR(10),
    amount                 NUMERIC(10,2),

    ship_city              VARCHAR(100),
    ship_state             VARCHAR(100),
    ship_postal_code       VARCHAR(20),
    ship_country           VARCHAR(20),

    promotion_ids          TEXT,

    b2b                    BOOLEAN,
    fulfilled_by           VARCHAR(30)
);