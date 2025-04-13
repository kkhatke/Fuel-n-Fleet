{# 
    This macro receives a value and converts it into title case.
#}

{% macro titlecase(column_name) %}
    initcap({{ column_name }})
{% endmacro %}
