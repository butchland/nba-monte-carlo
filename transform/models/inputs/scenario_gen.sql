{{
  config(
    materialized = "ephemeral"
) }}

SELECT i.generate_series as scenario_id
FROM generate_series(1,100000) i