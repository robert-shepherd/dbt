with orders as (

    select * from {{ ref('stg_orders') }}

),

payments as (
    select * from {{ ref('stg_payments')}}
)

select a.order_id
,a.customer_id
,b.amount
from orders a
left join payments b
on a.order_id = b.orderid