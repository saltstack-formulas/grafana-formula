# -*- coding: utf-8 -*-
# vim: ft=sls

{#- Get the `tplroot` from `tpldir` #}
{%- set tplroot = tpldir.split('/')[0] %}
{%- set sls_config_file = tplroot ~ '.config.file' %}
{%- from tplroot ~ "/map.jinja" import grafana with context %}

include:
  - {{ sls_config_file }}

grafana-service-running-service-running:
  service.running:
    - name: {{ grafana.service.name }}
    - enable: True
    - watch:
      - file: grafana-config-file-file-managed
    - require:
      - sls: {{ sls_config_file }}
