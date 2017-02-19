{% set pillar_states = salt.pillar.get('state_list',[]) %}
{% set grains_states = salt.grains.get('installed.states',[]) %}
{% set state_list = pillar_states|list + grains_states|list %}
{% if state_list %}
{% set output = {saltenv:{grains['id']:state_list}} %}
{% else %}
{% set output = {'base':{'*':['dyn_top_errors.no_states']}}
{% endif %}
{{output|yaml}}
