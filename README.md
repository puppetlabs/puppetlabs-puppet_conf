
# puppet_conf

#### Table of Contents

1. [Overview](#overview)
2. [Module Description](#module-description)
3. [Setup](#setup)
     * [Requirements](#requirements)
4. [Usage](#usage)
5. [Reference](#reference)
6. [Limitations](#limitations)
7. [License](#license)
8. [Development](#development)

## Overview

This module provides the puppet_conf task.

## Module Description

The puppet_conf task allows you to inspect and change the configuration options in the `puppet.conf` file.

## Setup

### Requirements

This module is compatible with Puppet Enterprise and Puppet Bolt.

* To run tasks with Puppet Enterprise, PE 2018.1 or later must be installed on the machine from which you are running task commands. Machines receiving task requests must be Puppet agents.

* To run tasks with Puppet Bolt, Bolt 1.0 or later must be installed on the machine from which you are running task commands. Machines receiving task requests must have SSH or WinRM services enabled.

## Usage

To view the available actions and parameters, on the command line, run `puppet task show puppet_conf` or see the puppet_conf module page on the [Forge](https://forge.puppet.com/puppetlabs/puppet_conf/tasks).
For a complete list of `puppet.conf` options, see the [`puppet.conf`](https://docs.puppet.com/puppet/latest/config_file_main.html) documentation.
To show help for the task CLI, run `puppet task run --help` or `bolt task run --help`

To run a puppet_conf task, use the task command, specifying the action, section, and setting of the `puppet.conf` setting.

* With PE on the command line, run `puppet task run puppet_conf action=<ACTION> section=<SECTION> setting=<SETTING>`.
* With Bolt on the command line, run `bolt task run puppet_conf action=<ACTION> section=<SECTION> setting=<SETTING>`.

For example, to check the status of the agent graph setting in `puppet.conf`, run:

* With PE, run `puppet task run puppet_conf action=get section=agent setting=graph --nodes neptune`
* With Bolt, run `bolt task run puppet_conf action=get section=agent setting=graph --nodes neptune --modulepath ~/modules`

To set the value of the agent graph setting in `puppet.conf`, specify a value with the `set` action:

* With PE, run `puppet task run puppet_conf action=set section=agent setting=graph value=true --nodes neptune`
* With Bolt, run `bolt task run puppet_conf action=set section=agent setting=graph value=true --nodes neptune --modulepath ~/modules`

You can also run tasks in the PE console. See PE task documentation for complete information.

## Reference

For information on the classes and types, see the [REFERENCE.md](https://github.com/puppetlabs/puppetlabs-puppet_conf/blob/main/REFERENCE.md).

## Limitations

For an extensive list of supported operating systems, see [metadata.json](https://github.com/puppetlabs/puppetlabs-puppet_conf/blob/main/metadata.json)

## License

This codebase is licensed under the Apache2.0 licensing, however due to the nature of the codebase the open source dependencies may also use a combination of [AGPL](https://www.gnu.org/licenses/agpl-3.0.en.html), [BSD-2](https://opensource.org/license/bsd-2-claus), [BSD-3](https://opensource.org/license/bsd-3-claus), [GPL2.0](https://www.gnu.org/licenses/old-licenses/gpl-2.0.en.html), [LGPL](https://opensource.org/license/lgpl-3-0/), [MIT](https://opensource.org/license/mit/) and [MPL](https://opensource.org/license/mpl-2-0/) Licensing.

## Development

Puppet modules on the Puppet Forge are open projects, and community contributions are essential for keeping them great. To contribute to Puppet projects, see our [module contribution guide.](https://github.com/puppetlabs/puppetlabs-puppet_conf/blob/main/CONTRIBUTING.md)
