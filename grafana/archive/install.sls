# -*- coding: utf-8 -*-
# vim: ft=sls

{#- Get the `tplroot` from `tpldir` #}
{%- set tplroot = tpldir.split('/')[0] %}
{%- from tplroot ~ "/map.jinja" import grafana with context %}
{%- from tplroot ~ "/jinja/macros.jinja" import format_kwargs with context %}

grafana-package-archive-install-file-directory:
  file.directory:
    - name: {{ grafana.pkg.archive.name }}
    - makedirs: True
    - require_in:
      - archive: grafana-package-archive-install-archive-extracted

grafana-package-archive-install-archive-extracted:
  archive.extracted:
    {{- format_kwargs(grafana.pkg.archive) }}
