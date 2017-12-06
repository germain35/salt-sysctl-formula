{%- set sysctl = salt['pillar.get']('sysctl', {}) %}

{%- for name, value in sysctl.items() %}
{{name}}:
  sysctl.present:
    - value: {{value}}
{%- endfor %}
