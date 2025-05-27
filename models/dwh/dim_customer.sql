with
_customers as (select * from {{ ref('stg_jaffle_shop__customers') }})
, _orders as (select * from {{ ref('stg_jaffle_shop__orders') }})

, nb_orders as (
    select
        customer_id
        , count(1) as number_of_orders
    from _orders
    group by all
)

select
    _customers.*
    , nb_orders.number_of_orders
from
    _customers
    left join nb_orders
        on nb_orders.customer_id = _customers.id
