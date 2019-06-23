# -*- coding: utf-8 -*-
# vim: ft=sls

{#- Get the `tplroot` from `tpldir` #}
{%- set tplroot = tpldir.split('/')[0] %}
{%- from tplroot ~ "/map.jinja" import grafana with context %}
{%- from tplroot ~ "/jinja/macros.jinja" import format_kwargs with context %}

  {%- if grafana.pkg.use_upstream_archive %}

grafana-package-archive-install-file-directory:
  file.directory:
    - name: {{ grafana.pkg.archive.name }}
    - user: root
    - group: root
    - mode: 755
    - makedirs: True
    - require_in:
      - archive: grafana-package-archive-install-archive-extracted
    - recurse:
        - user
        - group
        - mode

grafana-package-archive-install-archive-extracted:
  archive.extracted:
    {{- format_kwargs(grafana.pkg.archive) }}
    - retry:
        attempts: 3
        until: True
        interval: 60
        splay: 10
    - user: root
    - group: root
    - recurse:
        - user
        - group

  {%- endif %}
