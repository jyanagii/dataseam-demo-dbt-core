{{ config(materialized='table') }}

SELECT
  order_id,
  customer_id,
  order_date,

  currency,
  is_valid,
  notes
FROM {{ source('raw', 'orders') }}
