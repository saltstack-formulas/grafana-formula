# -*- coding: utf-8 -*-
# vim: ft=sls

{#- Get the `tplroot` from `tpldir` #}
{%- set tplroot = tpldir.split('/')[0] %}
{%- from tplroot ~ "/map.jinja" import grafana with context %}
{%- set sls_archive_clean = tplroot ~ '.archive.clean' %}
{%- set sls_package_clean = tplroot ~ '.package.clean' %}
{%- set sls_service_clean = tplroot ~ '.service.clean' %}
{%- set sls_alternatives_clean = tplroot ~ '.config.alternatives.clean' %}

  {%- if grains.kernel|lower == 'linux' and grafana.linux.altpriority|int > 0 %}

include:
  - {{ sls_service_clean }}
  - {{ sls_archive_clean if grafana.pkg.use_upstream_archive else sls_package_clean }}
  - {{ sls_alternatives_clean }}

grafana-config-clean-file-absent:
  file.absent:
    - names:
      - {{ grafana.config_file }}
      - {{ grafana.environ_file }}
    - require:
      - sls: {{ sls_archive_clean if grafana.pkg.use_upstream_archive else sls_package_clean }}
      - sls: {{ sls_alternatives_clean }}

  {%- endif %}
