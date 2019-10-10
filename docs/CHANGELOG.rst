
Changelog
=========

`3.1.1 <https://github.com/saltstack-formulas/grafana-formula/compare/v3.1.0...v3.1.1>`_ (2019-10-10)
---------------------------------------------------------------------------------------------------------

Bug Fixes
^^^^^^^^^


* **grafana.ini.jinja:** fix ``salt-lint`` errors (\ ` <https://github.com/saltstack-formulas/grafana-formula/commit/909a3e6>`_\ )
* **install.sls:** fix ``salt-lint`` errors (\ ` <https://github.com/saltstack-formulas/grafana-formula/commit/4496044>`_\ )
* **install.sls:** fix ``salt-lint`` errors (\ ` <https://github.com/saltstack-formulas/grafana-formula/commit/dcb6ed7>`_\ )

Continuous Integration
^^^^^^^^^^^^^^^^^^^^^^


* **kitchen:** change ``log_level`` to ``debug`` instead of ``info`` (\ ` <https://github.com/saltstack-formulas/grafana-formula/commit/008d465>`_\ )
* **kitchen:** install required packages to bootstrapped ``opensuse`` [skip ci] (\ ` <https://github.com/saltstack-formulas/grafana-formula/commit/6b84248>`_\ )
* **kitchen:** use bootstrapped ``opensuse`` images until ``2019.2.2`` [skip ci] (\ ` <https://github.com/saltstack-formulas/grafana-formula/commit/7d0281a>`_\ )
* **kitchen+travis:** replace EOL pre-salted images (\ ` <https://github.com/saltstack-formulas/grafana-formula/commit/2caa46b>`_\ )
* **platform:** add ``arch-base-latest`` (commented out for now) [skip ci] (\ ` <https://github.com/saltstack-formulas/grafana-formula/commit/22d624b>`_\ )
* **yamllint:** add rule ``empty-values`` & use new ``yaml-files`` setting (\ ` <https://github.com/saltstack-formulas/grafana-formula/commit/8f2ba08>`_\ )
* merge travis matrix, add ``salt-lint`` & ``rubocop`` to ``lint`` job (\ ` <https://github.com/saltstack-formulas/grafana-formula/commit/fb65280>`_\ )
* use ``dist: bionic`` & apply ``opensuse-leap-15`` SCP error workaround (\ ` <https://github.com/saltstack-formulas/grafana-formula/commit/85b69bb>`_\ )

`3.1.0 <https://github.com/saltstack-formulas/grafana-formula/compare/v3.0.1...v3.1.0>`_ (2019-08-17)
---------------------------------------------------------------------------------------------------------

Features
^^^^^^^^


* **yamllint:** include for this repo and apply rules throughout (\ `62d6663 <https://github.com/saltstack-formulas/grafana-formula/commit/62d6663>`_\ )

`3.0.1 <https://github.com/saltstack-formulas/grafana-formula/compare/v3.0.0...v3.0.1>`_ (2019-07-25)
---------------------------------------------------------------------------------------------------------

Bug Fixes
^^^^^^^^^


* **macro:** remove unused 'concat_args' macro (\ `31f5863 <https://github.com/saltstack-formulas/grafana-formula/commit/31f5863>`_\ )

Continuous Integration
^^^^^^^^^^^^^^^^^^^^^^


* **kitchen+travis:** modify matrix to include ``develop`` platform (\ `fe779ca <https://github.com/saltstack-formulas/grafana-formula/commit/fe779ca>`_\ )

`3.0.0 <https://github.com/saltstack-formulas/grafana-formula/compare/v2.0.0...v3.0.0>`_ (2019-06-23)
---------------------------------------------------------------------------------------------------------

Features
^^^^^^^^


* **alternatives:** add linux alternatives support (\ `0b05c5d <https://github.com/saltstack-formulas/grafana-formula/commit/0b05c5d>`_\ )
* **archives:** introduce support for archive files (\ `e7a1523 <https://github.com/saltstack-formulas/grafana-formula/commit/e7a1523>`_\ )

Tests
^^^^^


* **fixes:** fix two kitchen test failures (\ `4447f32 <https://github.com/saltstack-formulas/grafana-formula/commit/4447f32>`_\ )
* **inspec:** expand unit tests for archives (\ `27bc326 <https://github.com/saltstack-formulas/grafana-formula/commit/27bc326>`_\ )

BREAKING CHANGES
^^^^^^^^^^^^^^^^


* **archives:** the parameter ``pkg`` is now a dictionary. References
  to ``template.pkg`` should be changed to ``template.pkg.name``.

`2.0.0 <https://github.com/saltstack-formulas/grafana-formula/compare/v1.1.1...v2.0.0>`_ (2019-06-23)
---------------------------------------------------------------------------------------------------------

Features
^^^^^^^^


* **repository:** support rpm-based linux distros (\ `ded3157 <https://github.com/saltstack-formulas/grafana-formula/commit/ded3157>`_\ )

BREAKING CHANGES
^^^^^^^^^^^^^^^^


* **repository:** the parameter ``pkg`` is now a dictionary. References
  to ``grafana.pkg`` should be changed to ``grafana.pkg.name``.

`1.1.1 <https://github.com/saltstack-formulas/grafana-formula/compare/v1.1.0...v1.1.1>`_ (2019-06-23)
---------------------------------------------------------------------------------------------------------

Bug Fixes
^^^^^^^^^


* **macos:** fix service name on macos (\ `f28d08b <https://github.com/saltstack-formulas/grafana-formula/commit/f28d08b>`_\ )

`1.1.0 <https://github.com/saltstack-formulas/grafana-formula/compare/v1.0.0...v1.1.0>`_ (2019-06-05)
---------------------------------------------------------------------------------------------------------

Features
^^^^^^^^


* **macos:** basic package and group handling (\ `bda2a7c <https://github.com/saltstack-formulas/grafana-formula/commit/bda2a7c>`_\ )

1.0.0 (2019-05-06)
------------------

Features
^^^^^^^^


* **grafana-formula:** based on template-formula (\ `bd466a1 <https://github.com/alxwr/grafana-formula/commit/bd466a1>`_\ )
