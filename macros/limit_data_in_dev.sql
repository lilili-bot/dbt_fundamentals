{% macro limit_data_in_dev(column_name) %}
{% if target.name == 'dev' %}
where {{column_name}} >= dateadd('day',-5,current_timestamp)
{% endif %}
{% endmacro %}