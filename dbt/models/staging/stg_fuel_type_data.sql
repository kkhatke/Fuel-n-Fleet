{{ config(materialized='table') }}

with source as (
    select * from {{ source('staging', 'fuel_type_data') }}
),

fixed as (
    select
        unique_row_id,
        filename,
        cast(month as string) as year,
        cast(state as string) as month,
        cast(type as string) as state,
        cast(year as string) as type,
        category,
        cast(registrations as int64) as registrations
    from source
),

final as (
    select
        unique_row_id,
        filename,
        {{ add_date('month', 'year') }} as reg_date,
        year,
        month,
        state,
        {{ titlecase('type') }} as type,
        case
            when lower(category) = 'fuel' then 'Fuel'
            else category
        end as category,
        registrations
    from fixed
)

select * from final
