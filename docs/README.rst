grafana-formula
================

|img_travis| |img_sr|

.. |img_travis| image:: https://travis-ci.com/saltstack-formulas/grafana-formula.svg?branch=master
   :alt: Travis CI Build Status
   :scale: 100%
   :target: https://travis-ci.com/saltstack-formulas/grafana-formula
.. |img_sr| image:: https://img.shields.io/badge/%20%20%F0%9F%93%A6%F0%9F%9A%80-semantic--release-e10079.svg
   :alt: Semantic Release
   :scale: 100%
   :target: https://github.com/semantic-release/semantic-release

Manage Grafana.

.. contents:: **Table of Contents**

General notes
-------------

See the full `SaltStack Formulas installation and usage instructions
<https://docs.saltstack.com/en/latest/topics/development/conventions/formulas.html>`_.

If you want to use this formula, please pay attention to the ``FORMULA`` file and/or ``git tag``,
which contains the currently released version. This formula is versioned according to `Semantic Versioning <http://semver.org/>`_.

See `Formula Versioning Section <https://docs.saltstack.com/en/latest/topics/development/conventions/formulas.html#versioning>`_ for more details.

Contributing to this repo
-------------------------

**Commit message formatting is significant!!**

Please see `How to contribute <https://github.com/saltstack-formulas/.github/blob/master/CONTRIBUTING.rst>`_ for more details.

Available states
----------------

.. contents::
   :local:

``grafana``
^^^^^^^^^^^^

*Meta-state (This is a state that includes other states)*.

This installs the grafana package,
manages the grafana configuration file and then
starts the associated grafana service.

``grafana.package``
^^^^^^^^^^^^^^^^^^^^

This state will install the grafana package only.

``grafana.archive``
^^^^^^^^^^^^^^^^^^^

This state will install the grafana software from archive file only.

``grafana.config``
^^^^^^^^^^^^^^^^^^^

This state will configure the grafana service and has a dependency on ``grafana.install``
via include list.

``grafana.service``
^^^^^^^^^^^^^^^^^^^^

This state will start the grafana service and has a dependency on ``grafana.config``
via include list.

``grafana.clean``
^^^^^^^^^^^^^^^^^^

*Meta-state (This is a state that includes other states)*.

this state will undo everything performed in the ``grafana`` meta-state in reverse order, i.e.
stops the service,
removes the configuration file and
then uninstalls the package.

``grafana.service.clean``
^^^^^^^^^^^^^^^^^^^^^^^^^^

This state will stop the grafana service and disable it at boot time.

``grafana.config.clean``
^^^^^^^^^^^^^^^^^^^^^^^^^

This state will remove the configuration of the grafana service and has a
dependency on ``grafana.service.clean`` via include list.

``grafana.package.clean``
^^^^^^^^^^^^^^^^^^^^^^^^^^

This state will remove the grafana package and has a depency on
``grafana.config.clean`` via include list.

``grafana.archive.clean``
^^^^^^^^^^^^^^^^^^^^^^^^^

This state will uninstall grafana software from archive extracted directory.
