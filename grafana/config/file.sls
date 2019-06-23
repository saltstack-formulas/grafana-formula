# -*- coding: utf-8 -*-
# vim: ft=sls

{#- Get the `tplroot` from `tpldir` #}
{%- set tplroot = tpldir.split('/')[0] %}
{%- from tplroot ~ "/map.jinja" import grafana with context %}
{%- from tplroot ~ "/libtofs.jinja" import files_switch with context %}

{%- if 'config' in grafana and grafana.config %}
    {%- if grafana.pkg.use_upstream_archive %}
        {%- set sls_package_install = tplroot ~ '.archive.install' %}
    {%- else %}
        {%- set sls_package_install = tplroot ~ '.package.install' %}
    {%- endif %}

include:
  - {{ sls_package_install }}

grafana-config-file-file-managed-config_file:
  file.managed:
    - name: {{ grafana.config_file }}
    - source: {{ files_switch(['grafana.ini.jinja'],
                              lookup='grafana-config-file-file-managed-config_file'
                 )
              }}
    - mode: 640
    - user: root
    - group: {{ grafana.group }}
    - group: {{ grafana.rootgroup if grafana.pkg.use_upstream_archive else grafana.group }}
    - makedirs: True
    - template: jinja
    - context:
        config: {{ grafana.config|json }}
    - require:
      - sls: {{ sls_package_install }}

{%- endif %}
