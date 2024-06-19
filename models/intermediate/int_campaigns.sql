Select *
from {{ref('stg_raw__adwords')}}

UNION ALL
Select *
from {{ref('stg_raw__bing')}}

UNION ALL
Select *
from {{ref('stg_raw__creiteo')}}


UNION ALL
Select *
from {{ref('stg_raw__facebook')}}


