select order_number,
quantity_ordered*price_each as reveneu

from {{ref('dbt_sample_data_stg')}}

order by reveneu desc