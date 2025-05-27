with
_orders as (select * from {{ ref('fact_payment')}})

select
    customer_id
    , avg(amount) avg_revenue
from _orders
group by all
having avg_revenue < 0