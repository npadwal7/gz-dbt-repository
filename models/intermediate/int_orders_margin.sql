Select orders_id,
date_date,
sum(quantity) as quantity,
round(sum(cast(purchase_price as FLOAT64)*quantity),2) as purchase_cost,
round(sum(margin),2) as total_margin,
round(sum(revenue),2) as total_revenue
From {{ref("int_sales_margin")}}
group by orders_id , date_date
order by date_date