with

source as (

    select * from {{ source('ecom', 'raw_customers') }}

),

renamed as (

    select

        ----------  ids
        c1 as customer_id,

        ---------- text
        c2 as customer_name

    from source

)

select * from renamed
