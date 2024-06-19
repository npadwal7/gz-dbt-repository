Select
date_date,
sum (ads_cost) as ads_cost,
sum (impression) as impression,
sum (click) as clicks,
from {{ref("int_campaigns")}}
group by date_date
order by date_date