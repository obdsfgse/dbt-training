{% macro with_ref(model_name, alias = "") %}

{% if alias != "" %}
    {{ alias }}
{% else %}
    {{ model_name }}
{% endif %}

as (select * from {{ ref(model_name) }})
{% endmacro %}
