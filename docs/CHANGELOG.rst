
Changelog
=========

`3.1.3 <https://github.com/saltstack-formulas/grafana-formula/compare/v3.1.2...v3.1.3>`_ (2022-12-01)
---------------------------------------------------------------------------------------------------------

Bug Fixes
^^^^^^^^^


* packages repo url for Debian & RPM (\ `201c5c7 <https://github.com/saltstack-formulas/grafana-formula/commit/201c5c70a67793608eff86ff955f03a49940e031>`_\ )

Continuous Integration
^^^^^^^^^^^^^^^^^^^^^^


* update ``pre-commit`` configuration inc. for pre-commit.ci [skip ci] (\ `447056d <https://github.com/saltstack-formulas/grafana-formula/commit/447056d9d74e0e2bcc8e8ba1e724adb679e18325>`_\ )
* **kitchen+gitlab:** update for new pre-salted images [skip ci] (\ `965f548 <https://github.com/saltstack-formulas/grafana-formula/commit/965f548c98c736f7eb5f2e8dfa419f5a8368baa1>`_\ )
* update linters to latest versions [skip ci] (\ `3d301cd <https://github.com/saltstack-formulas/grafana-formula/commit/3d301cd6f7705611a65fcbd89ba72053faefde6e>`_\ )
* **3003.1:** update inc. AlmaLinux, Rocky & ``rst-lint`` [skip ci] (\ `5069b17 <https://github.com/saltstack-formulas/grafana-formula/commit/5069b17db7c409ad1cd75aeeae35a92dd987c232>`_\ )
* **commitlint:** ensure ``upstream/master`` uses main repo URL [skip ci] (\ `dc2e35e <https://github.com/saltstack-formulas/grafana-formula/commit/dc2e35e6c3ebfd2779c287829168317a628af772>`_\ )
* **gemfile:** allow rubygems proxy to be provided as an env var [skip ci] (\ `d516da9 <https://github.com/saltstack-formulas/grafana-formula/commit/d516da9e88ca82466c19dacc6b9db80aac7a48b3>`_\ )
* **gemfile+lock:** use ``ssf`` customised ``inspec`` repo [skip ci] (\ `fb037f3 <https://github.com/saltstack-formulas/grafana-formula/commit/fb037f325d8e1fc9e26fb5a71cc47af03a44fd14>`_\ )
* **gemfile+lock:** use ``ssf`` customised ``kitchen-docker`` repo [skip ci] (\ `1fcbb56 <https://github.com/saltstack-formulas/grafana-formula/commit/1fcbb565ef7856cf57910d5cdf7e2bb1dc941bd0>`_\ )
* **gitlab-ci:** add ``rubocop`` linter (with ``allow_failure``\ ) [skip ci] (\ `9ed07c8 <https://github.com/saltstack-formulas/grafana-formula/commit/9ed07c857b986113ffcc2e2307880901d88e1e75>`_\ )
* **kitchen:** move ``provisioner`` block & update ``run_command`` [skip ci] (\ `a2686d8 <https://github.com/saltstack-formulas/grafana-formula/commit/a2686d86c148cc4d1dbcd129784e151c5932b18a>`_\ )
* **kitchen+ci:** update with ``3004`` pre-salted images/boxes [skip ci] (\ `bf8981b <https://github.com/saltstack-formulas/grafana-formula/commit/bf8981b037a4f9c03a314bc66db8d78873352d15>`_\ )
* **kitchen+ci:** update with latest ``3003.2`` pre-salted images [skip ci] (\ `c8e9d40 <https://github.com/saltstack-formulas/grafana-formula/commit/c8e9d4094751fc319dace6f8f672dac4b61e2c27>`_\ )
* **kitchen+ci:** update with latest CVE pre-salted images [skip ci] (\ `8ea60f4 <https://github.com/saltstack-formulas/grafana-formula/commit/8ea60f49b268dc5c18ec32b4f1e7be2a9ef0833b>`_\ )
* **kitchen+gitlab:** update for new pre-salted images [skip ci] (\ `88c8fb6 <https://github.com/saltstack-formulas/grafana-formula/commit/88c8fb6ff7f52ee14e2de4a3e3e5513c61750579>`_\ )
* add Debian 11 Bullseye & update ``yamllint`` configuration [skip ci] (\ `c084dd2 <https://github.com/saltstack-formulas/grafana-formula/commit/c084dd2c5a3085f2d99882198a33e963762e2fe1>`_\ )
* **kitchen+gitlab:** remove Ubuntu 16.04 & Fedora 32 (EOL) [skip ci] (\ `a821332 <https://github.com/saltstack-formulas/grafana-formula/commit/a821332b35e9dff6652aa829d4ba30609472603f>`_\ )
* add ``arch-master`` to matrix and update ``.travis.yml`` [skip ci] (\ `ac99d2c <https://github.com/saltstack-formulas/grafana-formula/commit/ac99d2c3a27772e14f4f1601034c113b6cf9b5b7>`_\ )
* **kitchen+ci:** use latest pre-salted images (after CVE) [skip ci] (\ `97cdb9e <https://github.com/saltstack-formulas/grafana-formula/commit/97cdb9ea4afbc2bc4b748bb7b780926ea866f1e3>`_\ )
* **kitchen+gitlab:** adjust matrix to add ``3003`` [skip ci] (\ `4067e96 <https://github.com/saltstack-formulas/grafana-formula/commit/4067e965538ac115efbfc06b7aa533c740df320b>`_\ )
* **kitchen+gitlab-ci:** use latest pre-salted images [skip ci] (\ `56a2403 <https://github.com/saltstack-formulas/grafana-formula/commit/56a240369f583831894a94c46e2e13165a265a89>`_\ )
* **pre-commit:** update hook for ``rubocop`` [skip ci] (\ `a4dfc3b <https://github.com/saltstack-formulas/grafana-formula/commit/a4dfc3b909c0d75e7714fb528579c496f40a9064>`_\ )

Documentation
^^^^^^^^^^^^^


* **readme:** fix ``coala`` violations [skip ci] (\ `60ef64c <https://github.com/saltstack-formulas/grafana-formula/commit/60ef64c151316fa92d4cd3079c57d66095cf2af1>`_\ )

Tests
^^^^^


* **system:** add ``build_platform_codename`` [skip ci] (\ `a0fdc28 <https://github.com/saltstack-formulas/grafana-formula/commit/a0fdc283e332719c6e5228d8d73b191da8cdc21c>`_\ )
* **system.rb:** add support for ``mac_os_x`` [skip ci] (\ `b0db53d <https://github.com/saltstack-formulas/grafana-formula/commit/b0db53dbea6150cead40c9f56cdc098710bf345f>`_\ )
* standardise use of ``share`` suite & ``_mapdata`` state [skip ci] (\ `62b327d <https://github.com/saltstack-formulas/grafana-formula/commit/62b327dbe58fe3be53bfd6aefb80a88125c0881a>`_\ )

`3.1.2 <https://github.com/saltstack-formulas/grafana-formula/compare/v3.1.1...v3.1.2>`_ (2020-12-16)
---------------------------------------------------------------------------------------------------------

Bug Fixes
^^^^^^^^^


* **libtofs:** “files_switch” mess up the variable exported by “map.jinja” [skip ci] (\ `6c0f0c8 <https://github.com/saltstack-formulas/grafana-formula/commit/6c0f0c84e5c5f8a5d2ef36c2e0b3406aef099f2f>`_\ )
* **release.config.js:** use full commit hash in commit link [skip ci] (\ `9df679f <https://github.com/saltstack-formulas/grafana-formula/commit/9df679f91699605780fd25a2a48595b9babdcc3b>`_\ )

Continuous Integration
^^^^^^^^^^^^^^^^^^^^^^


* **gemfile:** restrict ``train`` gem version until upstream fix [skip ci] (\ `7b44328 <https://github.com/saltstack-formulas/grafana-formula/commit/7b44328a7c2f408c09b312474834595edcffe5c0>`_\ )
* **gemfile.lock:** add to repo with updated ``Gemfile`` [skip ci] (\ `492040c <https://github.com/saltstack-formulas/grafana-formula/commit/492040ccba1008fe63fea6ded3c33c83b8ee927a>`_\ )
* **gitlab-ci:** use GitLab CI as Travis CI replacement (\ `c477cb4 <https://github.com/saltstack-formulas/grafana-formula/commit/c477cb4bcede0725ae10e76b185238e51fdd7600>`_\ )
* **kitchen:** avoid using bootstrap for ``master`` instances [skip ci] (\ `5447dce <https://github.com/saltstack-formulas/grafana-formula/commit/5447dce0013507a47471fe9c163e6467f896681f>`_\ )
* **kitchen:** use ``debian-10-master-py3`` instead of ``develop`` [skip ci] (\ `e5c31ef <https://github.com/saltstack-formulas/grafana-formula/commit/e5c31efe0a7337bd82285cb6485e457059386fa3>`_\ )
* **kitchen:** use ``develop`` image until ``master`` is ready (\ ``amazonlinux``\ ) [skip ci] (\ `a48fb76 <https://github.com/saltstack-formulas/grafana-formula/commit/a48fb76ab01897de01b76b4b3c8b0b53e7b415dd>`_\ )
* **kitchen:** use ``saltimages`` Docker Hub where available [skip ci] (\ `84be8c8 <https://github.com/saltstack-formulas/grafana-formula/commit/84be8c87f915d2e9e22b5fa1e1119cde0d6ea63b>`_\ )
* **kitchen+travis:** remove ``master-py2-arch-base-latest`` [skip ci] (\ `dd1afc4 <https://github.com/saltstack-formulas/grafana-formula/commit/dd1afc48fef462b9476f10839c512712f2d7f05a>`_\ )
* **kitchen+travis:** upgrade matrix after ``2019.2.2`` release [skip ci] (\ `8581213 <https://github.com/saltstack-formulas/grafana-formula/commit/8581213c8ffc826e3cb15e6fbe29029ed6646968>`_\ )
* **pre-commit:** add to formula [skip ci] (\ `39d58b2 <https://github.com/saltstack-formulas/grafana-formula/commit/39d58b2e21a96231cdc4e05a406dea0378f93409>`_\ )
* **pre-commit:** enable/disable ``rstcheck`` as relevant [skip ci] (\ `40e0abc <https://github.com/saltstack-formulas/grafana-formula/commit/40e0abcf2998f82169b51b361021fa4c70c35d06>`_\ )
* **pre-commit:** finalise ``rstcheck`` configuration [skip ci] (\ `01751a1 <https://github.com/saltstack-formulas/grafana-formula/commit/01751a1c4442d7156eab6f3bf2efbeae3dd3f0d4>`_\ )
* **travis:** add notifications => zulip [skip ci] (\ `819c5f1 <https://github.com/saltstack-formulas/grafana-formula/commit/819c5f107df7c8393f7749fe8d87685af2fdcbf6>`_\ )
* **travis:** apply changes from build config validation [skip ci] (\ `c707a82 <https://github.com/saltstack-formulas/grafana-formula/commit/c707a829d4860fe0c6be31840ff82bd68d3ad91b>`_\ )
* **travis:** opt-in to ``dpl v2`` to complete build config validation [skip ci] (\ `a6bd9d6 <https://github.com/saltstack-formulas/grafana-formula/commit/a6bd9d6ad32c1fe6bfa1652a7a625732c5a203d5>`_\ )
* **travis:** quote pathspecs used with ``git ls-files`` [skip ci] (\ `fb8d138 <https://github.com/saltstack-formulas/grafana-formula/commit/fb8d1389fa974824973917d937006c4ca53c9b88>`_\ )
* **travis:** run ``shellcheck`` during lint job [skip ci] (\ `0505c9d <https://github.com/saltstack-formulas/grafana-formula/commit/0505c9d84706d5265ac6a8781d4422cf18e578e9>`_\ )
* **travis:** update ``salt-lint`` config for ``v0.0.10`` [skip ci] (\ `8e79a7b <https://github.com/saltstack-formulas/grafana-formula/commit/8e79a7b2683bd3bf8d430a6ced49a659a0ad4e5e>`_\ )
* **travis:** use ``major.minor`` for ``semantic-release`` version [skip ci] (\ `dcc6545 <https://github.com/saltstack-formulas/grafana-formula/commit/dcc6545bea6241e34af2c34da2f56914764be74a>`_\ )
* **travis:** use build config validation (beta) [skip ci] (\ `21c71ce <https://github.com/saltstack-formulas/grafana-formula/commit/21c71cee47dc789be64fdeecf80aefef6e3c8155>`_\ )
* **workflows/commitlint:** add to repo [skip ci] (\ `168ac4c <https://github.com/saltstack-formulas/grafana-formula/commit/168ac4c54761e4d86cb88264f818c984a7fa70bf>`_\ )
* merge travis matrix, add ``salt-lint`` & ``rubocop`` to ``lint`` job (\ `2558fe5 <https://github.com/saltstack-formulas/grafana-formula/commit/2558fe52350026ad2281f817aad00ee0f2ee5d4d>`_\ )

Documentation
^^^^^^^^^^^^^


* **contributing:** remove to use org-level file instead [skip ci] (\ `3bf1dea <https://github.com/saltstack-formulas/grafana-formula/commit/3bf1dea99e16cc80bbb44e7a5e740b4f8d3dc1ca>`_\ )
* **readme:** update link to ``CONTRIBUTING`` [skip ci] (\ `de3948b <https://github.com/saltstack-formulas/grafana-formula/commit/de3948b281c67077fdd27fe2b22f4a8ff299fc79>`_\ )

Performance Improvements
^^^^^^^^^^^^^^^^^^^^^^^^


* **travis:** improve ``salt-lint`` invocation [skip ci] (\ `0ea000e <https://github.com/saltstack-formulas/grafana-formula/commit/0ea000ed00df2127dd692fedf13d4fd6afb62307>`_\ )

Styles
^^^^^^


* **libtofs.jinja:** use Black-inspired Jinja formatting [skip ci] (\ `641bafa <https://github.com/saltstack-formulas/grafana-formula/commit/641bafa10ae45af0cbe0b7b69a315bdaec00c183>`_\ )

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
