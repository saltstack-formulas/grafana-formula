# -*- coding: utf-8 -*-
# vim: ft=sls

{#- Get the `tplroot` from `tpldir` #}
{%- set tplroot = tpldir.split('/')[0] %}
{%- from tplroot ~ "/map.jinja" import grafana with context %}
{%- from tplroot ~ "/libtofs.jinja" import files_switch with context %}

{%- if 'environ' in grafana and grafana.environ %}
    {%- if grafana.pkg.use_upstream_archive %}
        {%- set sls_package_install = tplroot ~ '.archive.install' %}

include:
  - {{ sls_package_install }}

grafana-config-file-file-managed-environ_file:
  file.managed:
    - name: {{ grafana.environ_file }}
    - source: {{ files_switch(['grafana.sh.jinja'],
                              lookup='grafana-config-file-file-managed-environ_file'
                 )
              }}
    - mode: 640
    - user: root
    - group: {{ grafana.group }}
    - makedirs: True
    - template: jinja
    - context:
        config: {{ grafana.environ|json }}
    - require:
      - sls: {{ sls_package_install }}

    {%- endif %}
{%- endif %}
