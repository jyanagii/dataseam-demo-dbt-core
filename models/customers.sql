{{ config(materialized='table') }}

SELECT
  customer_id,
  email,
  signup_date,
  country
FROM {{ source('raw', 'customers') }}
