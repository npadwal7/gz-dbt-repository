select date_date ,
count(orders_id) as nb_transaction,
round(sum(total_revenue),2) as revenue,
round(round(sum(total_revenue),2)/count(orders_id),2) as avg_basket,
round(sum(total_margin),2) as margin,
round(sum(operational_margin),2) as operational_margin
from {{ref("int_orders_operational")}}
group by date_date
order by date_date desc