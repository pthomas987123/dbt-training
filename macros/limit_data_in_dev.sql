{% macro limit_dat_in_dev(column_name) %}
{% if target.name == 'development' %}
where {{column_name}} == dataadd('day', -30, current_timestamp)
{% endif %}
{% endmacro %}