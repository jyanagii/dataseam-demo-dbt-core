{{ config(materialized='table') }}

SELECT
  order_id,
  customer_id,
  order_date,
  amount,
  currency,
  is_valid,
  currency AS discount_code
FROM {{ source('raw', 'orders') }}
