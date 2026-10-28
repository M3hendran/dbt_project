{{ 
    config(
        materialized = 'table'
    )
}}

WITH bike_sales_data_new AS (
    -- Read directly from the CSV path inside the CTE
    SELECT * 
    FROM {{ ref('bike_sales_india') }}
)
-- Select all data out of the CTE
SELECT * 
FROM bike_sales_data_new;
