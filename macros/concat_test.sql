{% macro concat_test(column) %}
    CONCAT('Test', ' ', {{ column }})
{% endmacro %}
