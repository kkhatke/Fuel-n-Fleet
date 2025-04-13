{{ config(materialized='table') }}

with fuel as (
    select
        unique_row_id,
        filename,
        reg_date,
        year,
        month,
        state,
        category,
        type,
        registrations
    from {{ ref('stg_fuel_type_data') }}
),

vehicle as (
    select
        unique_row_id,
        filename,
        reg_date,
        year,
        month,
        state,
        category,
        type,
        registrations
    from {{ ref('stg_vehicle_category_data') }}
),

combined as (
    select * from fuel
    union all
    select * from vehicle
)

select * from combined
