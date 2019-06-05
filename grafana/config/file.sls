# -*- coding: utf-8 -*-
# vim: ft=sls

{#- Get the `tplroot` from `tpldir` #}
{%- set tplroot = tpldir.split('/')[0] %}
{%- set sls_package_install = tplroot ~ '.package.install' %}
{%- from tplroot ~ "/map.jinja" import grafana with context %}
{%- from tplroot ~ "/libtofs.jinja" import files_switch with context %}

include:
  - {{ sls_package_install }}

grafana-config-file-file-managed:
  file.managed:
    - name: {{ grafana.config_file }}
    - source: {{ files_switch(['grafana.ini.jinja'],
                              lookup='grafana-config-file-file-managed'
                 )
              }}
    - mode: 640
    - user: root
    - group: {{ grafana.group }}
    - makedirs: True
    - template: jinja
    - context:
        config: {{ grafana.config|json }}
    - require:
      - sls: {{ sls_package_install }}
