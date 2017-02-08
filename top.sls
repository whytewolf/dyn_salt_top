{% set env_list = salt.config.get('env_list',['base']) %}
{% if 'base' not in env_list %}
base:
  '*':
    - dyn_top_errors.no_base
{% else %}
{% endif %}
