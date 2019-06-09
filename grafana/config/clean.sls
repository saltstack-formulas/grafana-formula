# -*- coding: utf-8 -*-
# vim: ft=sls

{#- Get the `tplroot` from `tpldir` #}
{%- set tplroot = tpldir.split('/')[0] %}
{%- set sls_service_clean = tplroot ~ '.service.clean' %}
{%- from tplroot ~ "/map.jinja" import grafana with context %}

include:
  - {{ sls_service_clean }}

grafana-config-clean-file-absent:
  file.absent:
    - names:
       - {{ grafana.config_file }}
       - {{ grafana.environ_file }}
    - require:
      - sls: {{ sls_service_clean }}
