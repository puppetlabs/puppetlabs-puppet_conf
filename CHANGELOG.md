# Change log

All notable changes to this project will be documented in this file. The format is based on [Keep a Changelog](http://keepachangelog.com/en/1.0.0/) and this project adheres to [Semantic Versioning](http://semver.org).

## [v1.1.0](https://github.com/puppetlabs/puppetlabs-puppet_conf/tree/v1.1.0) (2021-03-13)

[Full Changelog](https://github.com/puppetlabs/puppetlabs-puppet_conf/compare/v1.0.0...v1.1.0)

### Added

- Add delete action [\#140](https://github.com/puppetlabs/puppetlabs-puppet_conf/pull/140) ([fetzerms](https://github.com/fetzerms))

## [v1.0.0](https://github.com/puppetlabs/puppetlabs-puppet_conf/tree/v1.0.0) (2021-03-01)

[Full Changelog](https://github.com/puppetlabs/puppetlabs-puppet_conf/compare/v0.8.0...v1.0.0)

### Changed

- pdksync - Remove Puppet 5 from testing and bump minimal version to 6.0.0 [\#134](https://github.com/puppetlabs/puppetlabs-puppet_conf/pull/134) ([carabasdaniel](https://github.com/carabasdaniel))

## [v0.8.0](https://github.com/puppetlabs/puppetlabs-puppet_conf/tree/v0.8.0) (2020-12-14)

[Full Changelog](https://github.com/puppetlabs/puppetlabs-puppet_conf/compare/v.0.7.0...v0.8.0)

### Added

- pdksync - \(feat\) Add support for Puppet 7 [\#125](https://github.com/puppetlabs/puppetlabs-puppet_conf/pull/125) ([daianamezdrea](https://github.com/daianamezdrea))

## [v.0.7.0](https://github.com/puppetlabs/puppetlabs-puppet_conf/tree/v.0.7.0) (2020-11-16)

[Full Changelog](https://github.com/puppetlabs/puppetlabs-puppet_conf/compare/v0.6.0...v.0.7.0)

### Added

- \(IAC-1002\) - Removal of inappropriate terminology [\#119](https://github.com/puppetlabs/puppetlabs-puppet_conf/pull/119) ([david22swan](https://github.com/david22swan))

## [v0.6.0](https://github.com/puppetlabs/puppetlabs-puppet_conf/tree/v0.6.0) (2019-12-09)

[Full Changelog](https://github.com/puppetlabs/puppetlabs-puppet_conf/compare/v0.5.0...v0.6.0)

## [v0.5.0](https://github.com/puppetlabs/puppetlabs-puppet_conf/tree/v0.5.0) (2019-12-09)

[Full Changelog](https://github.com/puppetlabs/puppetlabs-puppet_conf/compare/v0.4.0...v0.5.0)

### Added

- \(FM-8693\) - Addition of Support for CentOS 8 [\#83](https://github.com/puppetlabs/puppetlabs-puppet_conf/pull/83) ([david22swan](https://github.com/david22swan))

## [v0.4.0](https://github.com/puppetlabs/puppetlabs-puppet_conf/tree/v0.4.0) (2019-09-26)

[Full Changelog](https://github.com/puppetlabs/puppetlabs-puppet_conf/compare/0.3.1...v0.4.0)

### Changed

- pdksync - \(MODULES-8444\) - Raise lower Puppet bound [\#65](https://github.com/puppetlabs/puppetlabs-puppet_conf/pull/65) ([david22swan](https://github.com/david22swan))

### Added

- \(FM-8227\)Port to litmus [\#74](https://github.com/puppetlabs/puppetlabs-puppet_conf/pull/74) ([sheenaajay](https://github.com/sheenaajay))
- \(FM-8157\) Add Windows Server 2019 support [\#69](https://github.com/puppetlabs/puppetlabs-puppet_conf/pull/69) ([eimlav](https://github.com/eimlav))
- \(FM-8045\) Add Redhat8 support [\#68](https://github.com/puppetlabs/puppetlabs-puppet_conf/pull/68) ([sheenaajay](https://github.com/sheenaajay))

### Fixed

- FM-7947 - stringify puppet\_conf [\#67](https://github.com/puppetlabs/puppetlabs-puppet_conf/pull/67) ([lionce](https://github.com/lionce))

## [0.3.1](https://github.com/puppetlabs/puppetlabs-puppet_conf/tree/0.3.1) (2019-04-05)

[Full Changelog](https://github.com/puppetlabs/puppetlabs-puppet_conf/compare/0.3.0...0.3.1)

### Fixed

- pdksync - \(FM-7655\) Fix rubygems-update for ruby \< 2.3 [\#46](https://github.com/puppetlabs/puppetlabs-puppet_conf/pull/46) ([tphoney](https://github.com/tphoney))

## [0.3.0](https://github.com/puppetlabs/puppetlabs-puppet_conf/tree/0.3.0) (2018-09-27)

[Full Changelog](https://github.com/puppetlabs/puppetlabs-puppet_conf/compare/0.2.1...0.3.0)

### Added

- pdksync - \(FM-7392\) - Puppet 6 Testing Changes [\#40](https://github.com/puppetlabs/puppetlabs-puppet_conf/pull/40) ([pmcmaw](https://github.com/pmcmaw))
- pdksync - \(MODULES-6805\) metadata.json shows support for puppet 6 [\#38](https://github.com/puppetlabs/puppetlabs-puppet_conf/pull/38) ([tphoney](https://github.com/tphoney))

## 0.2.1

### Fixed

- Improve the reliability of finding the `puppet` binary when puppet-agent is installed

## Release 0.2.0
This release uses the PDK convert functionality which in return makes the module PDK compliant.

## Added
- PDK convert [MODULES-6465](https://tickets.puppet.com/browse/MODULES-6465).

## Release 0.1.5
Security release for CVE-2018-6508

### Fixed
- init task vulnerability to arbitrary remote code execution

## Release 0.1.4
Readme update.

## Fixed
- Readme update.
- noop metadata

## Release 0.1.3

### Fixed
- Fixed locales project name.
- Fixed cli description.

## Release 0.1.2
Readme update.

## Fixed
- Readme update.

## Release 0.1.1
This is the initial release of the puppet_conf task.

## Features
- Provides the following actions get and set.
- Allows specifying the section of the puppet_conf.


\* *This Changelog was automatically generated by [github_changelog_generator](https://github.com/github-changelog-generator/github-changelog-generator)*
