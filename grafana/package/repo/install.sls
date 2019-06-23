# -*- coding: utf-8 -*-
# vim: ft=sls

{#- Get the `tplroot` from `tpldir` #}
{%- set tplroot = tpldir.split('/')[0] %}
{%- from tplroot ~ "/map.jinja" import grafana with context %}

  {%- if grafana.pkg.use_upstream_repo %}
      {%- from tplroot ~ "/jinja/macros.jinja" import format_kwargs with context %}

grafana-package-repo-install-pkgrepo-managed:
  pkgrepo.managed:
    {{- format_kwargs(grafana.pkg.repo) }}

  {%- endif %}
