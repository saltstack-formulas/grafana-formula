# Changelog

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
