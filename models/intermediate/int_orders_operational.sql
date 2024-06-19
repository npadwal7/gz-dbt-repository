 with renamed as(
    
    select 
      orders_id,
      date_date,
      quantity,
      purchase_cost,
      total_revenue,
      total_margin,
      shipping_fee,
      cast(ship_cost as FLOAT64) + cast(logcost as FLOAT64) as shipping_cost
         from {{ref('int_orders_margin')}}
    join {{ref('stg_raw__ship')}}
    using (orders_id)
)
select *,
       round ( total_margin + shipping_fee - shipping_cost , 2 ) as operational_margin ,
      
from renamed