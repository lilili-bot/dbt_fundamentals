{% macro limit_data_in_dev(column_name) %}
{% if target.name == 'dev' %}
where {{column_name}} >= {{ dateadd('month',-1,'2018-03-30') }}
{% endif %}
{% endmacro %}