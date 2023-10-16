{% macro limit_data_in_dev(column_name, dev_days) -%}
{% if target.name == 'development' -%}
where {{ column_name }} >= dateadd('day',-{{ dev_days }},current_timestamp) -- Only active in default environment
{%- endif %}
{%- endmacro %}