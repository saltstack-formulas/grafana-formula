# -*- coding: utf-8 -*-
# vim: ft=sls

{#- Get the `tplroot` from `tpldir` #}
{%- set tplroot = tpldir.split('/')[0] %}
{%- from tplroot ~ "/map.jinja" import grafana with context %}
{%- set sls_archive_install = tplroot ~ '.archive.install' %}
{%- set sls_package_install = tplroot ~ '.package.clean' %}
{%- from tplroot ~ "/libtofs.jinja" import files_switch with context %}

  {%- if grains.kernel|lower == 'linux' and grafana.linux.altpriority|int > 0 %}

include:
  - {{ sls_archive_install if grafana.pkg.use_upstream_archive else sls_package_install }}

grafana-package-archive-install-home-alternative-install:
  cmd.run:
    - name: update-alternatives --install {{ grafana.dir }} grafana-home {{ grafana.base_dir }} {{grafana.linux.altpriority}}
    - watch:
      - archive: grafana-package-archive-install-archive-extracted
    - require:
      - {{ sls_archive_install if grafana.pkg.use_upstream_archive else sls_package_install }}
    - onlyif: {{ grains.os_family in ('Suse',) }}
  alternatives.install:
    - name: grafana-home
    - link: {{ grafana.dir }}
    - path: {{ grafana.base_dir }}
    - priority: {{ grafana.linux.altpriority }}
    - order: 10
    - watch:
        - archive: grafana-package-archive-install-archive-extracted
    - unless: {{ grains.os_family in ('Suse',) }}
    - require:
      - {{ sls_archive_install if grafana.pkg.use_upstream_archive else sls_package_install }}

grafana-package-archive-install-home-alternative-set:
  alternatives.set:
    - name: grafana-home
    - path: {{ grafana.base_dir }}
    - require:
      - alternatives: grafana-package-archive-install-home-alternative-install
    - unless: {{ grains.os_family in ('Suse',) }}

      {% for i in ['grafana',] %}

grafana-package-archive-install-{{ i }}-alternative-install:
  cmd.run:
    - name: update-alternatives --install /usr/bin/{{i}} link-{{i}} {{ grafana.base_dir }}/{{i}} {{grafana.linux.altpriority}}
    - require:
      - cmd: grafana-package-archive-install-home-alternative-install
    - onlyif: {{ grains.os_family in ('Suse',) }}
  alternatives.install:
    - name: link-{{ i }}
    - link: /usr/bin/{{ i }}
    - path: {{ grafana.base_dir }}/{{ i }}
    - priority: {{ grafana.linux.altpriority }}
    - order: 10
    - require:
      - alternatives: grafana-package-archive-install-home-alternative-install
    - unless: {{ grains.os_family in ('Suse',) }}

grafana-package-archive-install-{{ i }}-alternative-set:
  alternatives.set:
    - name: link-{{ i }}
    - path: {{ grafana.base_dir }}/{{ i }}
    - require:
      - alternatives: grafana-package-archive-install-{{ i }}-alternative-install
    - unless: {{ grains.os_family in ('Suse',) }}

     {% endfor %}
  {%- endif %}
