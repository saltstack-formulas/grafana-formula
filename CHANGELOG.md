# Changelog

## [3.1.2](https://github.com/saltstack-formulas/grafana-formula/compare/v3.1.1...v3.1.2) (2020-12-16)


### Bug Fixes

* **libtofs:** “files_switch” mess up the variable exported by “map.jinja” [skip ci] ([6c0f0c8](https://github.com/saltstack-formulas/grafana-formula/commit/6c0f0c84e5c5f8a5d2ef36c2e0b3406aef099f2f))
* **release.config.js:** use full commit hash in commit link [skip ci] ([9df679f](https://github.com/saltstack-formulas/grafana-formula/commit/9df679f91699605780fd25a2a48595b9babdcc3b))


### Continuous Integration

* **gemfile:** restrict `train` gem version until upstream fix [skip ci] ([7b44328](https://github.com/saltstack-formulas/grafana-formula/commit/7b44328a7c2f408c09b312474834595edcffe5c0))
* **gemfile.lock:** add to repo with updated `Gemfile` [skip ci] ([492040c](https://github.com/saltstack-formulas/grafana-formula/commit/492040ccba1008fe63fea6ded3c33c83b8ee927a))
* **gitlab-ci:** use GitLab CI as Travis CI replacement ([c477cb4](https://github.com/saltstack-formulas/grafana-formula/commit/c477cb4bcede0725ae10e76b185238e51fdd7600))
* **kitchen:** avoid using bootstrap for `master` instances [skip ci] ([5447dce](https://github.com/saltstack-formulas/grafana-formula/commit/5447dce0013507a47471fe9c163e6467f896681f))
* **kitchen:** use `debian-10-master-py3` instead of `develop` [skip ci] ([e5c31ef](https://github.com/saltstack-formulas/grafana-formula/commit/e5c31efe0a7337bd82285cb6485e457059386fa3))
* **kitchen:** use `develop` image until `master` is ready (`amazonlinux`) [skip ci] ([a48fb76](https://github.com/saltstack-formulas/grafana-formula/commit/a48fb76ab01897de01b76b4b3c8b0b53e7b415dd))
* **kitchen:** use `saltimages` Docker Hub where available [skip ci] ([84be8c8](https://github.com/saltstack-formulas/grafana-formula/commit/84be8c87f915d2e9e22b5fa1e1119cde0d6ea63b))
* **kitchen+travis:** remove `master-py2-arch-base-latest` [skip ci] ([dd1afc4](https://github.com/saltstack-formulas/grafana-formula/commit/dd1afc48fef462b9476f10839c512712f2d7f05a))
* **kitchen+travis:** upgrade matrix after `2019.2.2` release [skip ci] ([8581213](https://github.com/saltstack-formulas/grafana-formula/commit/8581213c8ffc826e3cb15e6fbe29029ed6646968))
* **pre-commit:** add to formula [skip ci] ([39d58b2](https://github.com/saltstack-formulas/grafana-formula/commit/39d58b2e21a96231cdc4e05a406dea0378f93409))
* **pre-commit:** enable/disable `rstcheck` as relevant [skip ci] ([40e0abc](https://github.com/saltstack-formulas/grafana-formula/commit/40e0abcf2998f82169b51b361021fa4c70c35d06))
* **pre-commit:** finalise `rstcheck` configuration [skip ci] ([01751a1](https://github.com/saltstack-formulas/grafana-formula/commit/01751a1c4442d7156eab6f3bf2efbeae3dd3f0d4))
* **travis:** add notifications => zulip [skip ci] ([819c5f1](https://github.com/saltstack-formulas/grafana-formula/commit/819c5f107df7c8393f7749fe8d87685af2fdcbf6))
* **travis:** apply changes from build config validation [skip ci] ([c707a82](https://github.com/saltstack-formulas/grafana-formula/commit/c707a829d4860fe0c6be31840ff82bd68d3ad91b))
* **travis:** opt-in to `dpl v2` to complete build config validation [skip ci] ([a6bd9d6](https://github.com/saltstack-formulas/grafana-formula/commit/a6bd9d6ad32c1fe6bfa1652a7a625732c5a203d5))
* **travis:** quote pathspecs used with `git ls-files` [skip ci] ([fb8d138](https://github.com/saltstack-formulas/grafana-formula/commit/fb8d1389fa974824973917d937006c4ca53c9b88))
* **travis:** run `shellcheck` during lint job [skip ci] ([0505c9d](https://github.com/saltstack-formulas/grafana-formula/commit/0505c9d84706d5265ac6a8781d4422cf18e578e9))
* **travis:** update `salt-lint` config for `v0.0.10` [skip ci] ([8e79a7b](https://github.com/saltstack-formulas/grafana-formula/commit/8e79a7b2683bd3bf8d430a6ced49a659a0ad4e5e))
* **travis:** use `major.minor` for `semantic-release` version [skip ci] ([dcc6545](https://github.com/saltstack-formulas/grafana-formula/commit/dcc6545bea6241e34af2c34da2f56914764be74a))
* **travis:** use build config validation (beta) [skip ci] ([21c71ce](https://github.com/saltstack-formulas/grafana-formula/commit/21c71cee47dc789be64fdeecf80aefef6e3c8155))
* **workflows/commitlint:** add to repo [skip ci] ([168ac4c](https://github.com/saltstack-formulas/grafana-formula/commit/168ac4c54761e4d86cb88264f818c984a7fa70bf))
* merge travis matrix, add `salt-lint` & `rubocop` to `lint` job ([2558fe5](https://github.com/saltstack-formulas/grafana-formula/commit/2558fe52350026ad2281f817aad00ee0f2ee5d4d))


### Documentation

* **contributing:** remove to use org-level file instead [skip ci] ([3bf1dea](https://github.com/saltstack-formulas/grafana-formula/commit/3bf1dea99e16cc80bbb44e7a5e740b4f8d3dc1ca))
* **readme:** update link to `CONTRIBUTING` [skip ci] ([de3948b](https://github.com/saltstack-formulas/grafana-formula/commit/de3948b281c67077fdd27fe2b22f4a8ff299fc79))


### Performance Improvements

* **travis:** improve `salt-lint` invocation [skip ci] ([0ea000e](https://github.com/saltstack-formulas/grafana-formula/commit/0ea000ed00df2127dd692fedf13d4fd6afb62307))


### Styles

* **libtofs.jinja:** use Black-inspired Jinja formatting [skip ci] ([641bafa](https://github.com/saltstack-formulas/grafana-formula/commit/641bafa10ae45af0cbe0b7b69a315bdaec00c183))

## [3.1.1](https://github.com/saltstack-formulas/grafana-formula/compare/v3.1.0...v3.1.1) (2019-10-10)


### Bug Fixes

* **grafana.ini.jinja:** fix `salt-lint` errors ([](https://github.com/saltstack-formulas/grafana-formula/commit/909a3e6))
* **install.sls:** fix `salt-lint` errors ([](https://github.com/saltstack-formulas/grafana-formula/commit/4496044))
* **install.sls:** fix `salt-lint` errors ([](https://github.com/saltstack-formulas/grafana-formula/commit/dcb6ed7))


### Continuous Integration

* **kitchen:** change `log_level` to `debug` instead of `info` ([](https://github.com/saltstack-formulas/grafana-formula/commit/008d465))
* **kitchen:** install required packages to bootstrapped `opensuse` [skip ci] ([](https://github.com/saltstack-formulas/grafana-formula/commit/6b84248))
* **kitchen:** use bootstrapped `opensuse` images until `2019.2.2` [skip ci] ([](https://github.com/saltstack-formulas/grafana-formula/commit/7d0281a))
* **kitchen+travis:** replace EOL pre-salted images ([](https://github.com/saltstack-formulas/grafana-formula/commit/2caa46b))
* **platform:** add `arch-base-latest` (commented out for now) [skip ci] ([](https://github.com/saltstack-formulas/grafana-formula/commit/22d624b))
* **yamllint:** add rule `empty-values` & use new `yaml-files` setting ([](https://github.com/saltstack-formulas/grafana-formula/commit/8f2ba08))
* merge travis matrix, add `salt-lint` & `rubocop` to `lint` job ([](https://github.com/saltstack-formulas/grafana-formula/commit/fb65280))
* use `dist: bionic` & apply `opensuse-leap-15` SCP error workaround ([](https://github.com/saltstack-formulas/grafana-formula/commit/85b69bb))

# [3.1.0](https://github.com/saltstack-formulas/grafana-formula/compare/v3.0.1...v3.1.0) (2019-08-17)


### Features

* **yamllint:** include for this repo and apply rules throughout ([62d6663](https://github.com/saltstack-formulas/grafana-formula/commit/62d6663))

## [3.0.1](https://github.com/saltstack-formulas/grafana-formula/compare/v3.0.0...v3.0.1) (2019-07-25)


### Bug Fixes

* **macro:** remove unused 'concat_args' macro ([31f5863](https://github.com/saltstack-formulas/grafana-formula/commit/31f5863))


### Continuous Integration

* **kitchen+travis:** modify matrix to include `develop` platform ([fe779ca](https://github.com/saltstack-formulas/grafana-formula/commit/fe779ca))

# [3.0.0](https://github.com/saltstack-formulas/grafana-formula/compare/v2.0.0...v3.0.0) (2019-06-23)


### Features

* **alternatives:** add linux alternatives support ([0b05c5d](https://github.com/saltstack-formulas/grafana-formula/commit/0b05c5d))
* **archives:** introduce support for archive files ([e7a1523](https://github.com/saltstack-formulas/grafana-formula/commit/e7a1523))


### Tests

* **fixes:** fix two kitchen test failures ([4447f32](https://github.com/saltstack-formulas/grafana-formula/commit/4447f32))
* **inspec:** expand unit tests for archives ([27bc326](https://github.com/saltstack-formulas/grafana-formula/commit/27bc326))


### BREAKING CHANGES

* **archives:** the parameter `pkg` is now a dictionary. References
 to `template.pkg` should be changed to `template.pkg.name`.

# [2.0.0](https://github.com/saltstack-formulas/grafana-formula/compare/v1.1.1...v2.0.0) (2019-06-23)


### Features

* **repository:** support rpm-based linux distros ([ded3157](https://github.com/saltstack-formulas/grafana-formula/commit/ded3157))


### BREAKING CHANGES

* **repository:** the parameter `pkg` is now a dictionary. References
 to `grafana.pkg` should be changed to `grafana.pkg.name`.

## [1.1.1](https://github.com/saltstack-formulas/grafana-formula/compare/v1.1.0...v1.1.1) (2019-06-23)


### Bug Fixes

* **macos:** fix service name on macos ([f28d08b](https://github.com/saltstack-formulas/grafana-formula/commit/f28d08b))

# [1.1.0](https://github.com/saltstack-formulas/grafana-formula/compare/v1.0.0...v1.1.0) (2019-06-05)


### Features

* **macos:** basic package and group handling ([bda2a7c](https://github.com/saltstack-formulas/grafana-formula/commit/bda2a7c))

# 1.0.0 (2019-05-06)


### Features

* **grafana-formula:** based on template-formula ([bd466a1](https://github.com/alxwr/grafana-formula/commit/bd466a1))
