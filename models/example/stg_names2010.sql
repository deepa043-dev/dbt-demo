with stg_names2010 as (
    select
        name,
        concat(assigned_sex_at_birth,' Gender') as Gender,
        count.
        {{concat_test('name')}} as new_name
    from babynames.names2010
)

select * from stg_names2010