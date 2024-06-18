select *,
 round(revenue-cast(purchase_price as FLOAT64)*quantity,2) as margin
 from {{ref('stg_raw__product')}}
 join {{ref('stg_raw__sales')}}
 using (products_id)
 