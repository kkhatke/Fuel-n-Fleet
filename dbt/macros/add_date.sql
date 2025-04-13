{# 
    This macro receives a year, month and returns the date in the format Jan-2023.
#}

{% macro add_date(month_col, year_col) %}

    parse_date('%b-%Y', concat({{ month_col }}, '-', {{ year_col }}))

{% endmacro %}