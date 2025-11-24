-- tests/generic/test_unique_values.sql
{% test unique_values(model, column_name) %}
  SELECT 
    {{ column_name }},
    COUNT(*) as count_occurrences
  FROM {{ model }}
  GROUP BY {{ column_name }}
  HAVING COUNT(*) > 1
{% endtest %}