select
    id,
    order_date,
    status,
    user_id as customer_id,
    _etl_loaded_at
from {{ source("jaffle_shop", "orders") }}
