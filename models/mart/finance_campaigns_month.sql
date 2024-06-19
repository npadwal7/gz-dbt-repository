select 
extract (year from date_date) ||"-"|| extract (month from date_date) as datemonth,
round(sum(ads_margin),1) as ads_margin,
round(sum(avg_basket),2) as average_basket,
round(sum(operational_margin),2) as operational_margin,
sum(ads_cost) as ads_cost,
sum(impression) as impression,
sum(clicks) as clicks,
round(sum(revenue),2) as revenue,
round(sum(margin),2) as margin,
from {{ref("finance_campaigns_day")}}
group by extract (year from date_date) ||"-"|| extract (month from date_date)