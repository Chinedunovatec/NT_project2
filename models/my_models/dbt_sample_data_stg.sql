
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/

{{ config(materialized='view') }}

select * from {{source('test_data', 'exam')}}

limit 10

/*
    Uncomment the line below to remove records with null `id` values
*/

-- where id is not null
