{{ config(
    materialized='incremental'
    , unique_key='id'
) }}

with
_payments as (select * from {{ ref('stg_stripe__payment') }}),

_orders as (select * from {{ ref('stg_jaffle_shop__orders') }})

select
    _payments.id,
    _payments.order_id,
    _orders.customer_id,
    _payments.status,
    _orders.order_date,
    _payments.amount,
    _payments.status in ('returned', 'return pending') as is_returned,
    current_timestamp() as load_date
from
    _payments
inner join _orders on _payments.order_id = _orders.id
{% if is_incremental() %}
    where
        _payments._batched_at >= (
            select coalesce(max(load_date), '1900-01-01') as max_date
            from {{ this }}
        )
{% endif %}
