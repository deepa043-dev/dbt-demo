{% macro get_date_parts(date_input) %}
    {% if date_input is string %}
        SELECT struct(
            '{{ date_input }}' AS original_date,
            EXTRACT(YEAR FROM '{{ date_input }}') AS year,
            EXTRACT(MONTH FROM '{{ date_input }}') AS month,
            EXTRACT(DAY FROM '{{ date_input }}') AS day,
            EXTRACT(DAYOFWEEK FROM '{{ date_input }}') AS day_of_week,
            EXTRACT(DAYOFYEAR FROM '{{ date_input }}') AS day_of_year,
            EXTRACT(WEEK FROM '{{ date_input }}') AS week,
            EXTRACT(QUARTER FROM '{{ date_input }}') AS quarter
        ) AS extract_date
    {% else %}
        SELECT struct(
            {{ date_input }} AS original_date,
            EXTRACT(YEAR FROM {{ date_input }}) AS year,
            EXTRACT(MONTH FROM {{ date_input }}) AS month,
            EXTRACT(DAY FROM {{ date_input }}) AS day,
            EXTRACT(DAYOFWEEK FROM {{ date_input }}) AS day_of_week,
            EXTRACT(DAYOFYEAR FROM {{ date_input }}) AS day_of_year,
            EXTRACT(WEEK FROM {{ date_input }}) AS week,
            EXTRACT(QUARTER FROM {{ date_input }}) AS quarter
        ) AS extract_date
    {% endif %}
{% endmacro %}
