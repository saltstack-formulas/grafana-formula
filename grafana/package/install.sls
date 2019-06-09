# -*- coding: utf-8 -*-
# vim: ft=sls

{#- Get the `tplroot` from `tpldir` #}
{%- set tplroot = tpldir.split('/')[0] %}
{%- from tplroot ~ "/map.jinja" import grafana with context %}

{% if grafana.pkgrepo %}
grafana-package-install-pkgrepo-managed:
  pkgrepo.managed:
    - humanname: {{ grafana.pkgrepo.humanname }}
    - name: {{ grafana.pkgrepo.name }}
    - file: {{ grafana.pkgrepo.file}}
    - key_url: {{ grafana.pkgrepo.key_url}}
    - require_in:
      - pkg: grafana-package-install-pkg-installed
{% endif %}

grafana-package-install-pkg-installed:
  pkg.installed:
    - name: {{ grafana.pkg.name }}
