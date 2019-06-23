# -*- coding: utf-8 -*-
# vim: ft=sls

{#- Get the `tplroot` from `tpldir` #}
{%- set tplroot = tpldir.split('/')[0] %}
{%- from tplroot ~ "/map.jinja" import grafana with context %}
{%- set sls_archive_clean = tplroot ~ '.archive.clean' %}
{%- set sls_package_clean = tplroot ~ '.package.clean' %}

  {%- if grains.kernel|lower == 'linux' and grafana.linux.altpriority|int > 0 %}

include:
  - {{ sls_archive_clean if grafana.pkg.use_upstream_archive else sls_package_clean }}

grafana-package-archive-remove-home-alternative-remove:
  alternatives.remove:
    - name: grafana-home
    - path: {{ grafana.pkg.archive.name }}
    - onlyif: update-alternatives --get-selections |grep ^grafana-home
    - require:
      - sls: {{ sls_archive_clean if grafana.pkg.use_upstream_archive else sls_package_clean }}

      {% for i in ['grafana-cli', 'grafana-server'] %}

grafana-package-archive-remove-{{ i }}-alternative-remove:
  alternatives.remove:
    - name: link-{{ i }}
    - path: {{ grafana.pkg.archive.name }}/bin/{{ i }}
    - onlyif: update-alternatives --get-selections |grep ^link-{{ i }}
    - require:
      - sls: {{ sls_archive_clean if grafana.pkg.use_upstream_archive else sls_package_clean }}

     {% endfor %}
  {%- endif %}
