
# puppet_conf

#### Table of Contents

1. [Description](#description)
2. [Requirements](#requirements)
3. [Usage - Configuration options and additional functionality](#usage)
4. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
5. [Getting help - Some Helpful commands](#getting-help)

## Description

This module provides the puppet_conf task. This task allows you to inspect and change the configuration options in the `puppet.conf` file.

## Requirements

This module is compatible with Puppet Enterprise and Puppet Bolt.

Puppet Enterprise 2017.3 or later has to be installed on the machine from which you are running task commands (the controller node). Machines receiving task requests must be Puppet agents.
OR
Puppet Bolt 0.3.2 or later has to be installed on the machine from which you are running task commands. Machines receiving task requests must have SSH or WinRM services enabled.

## Usage

To run a puppet_conf task, use the task command, specifying the action, section, and setting of the `puppet.conf` setting.

* With PE on the command line, run `puppet task run puppet_conf action=<ACTION> section=<SECTION> setting=<SETTING>`.
* With Bolt on the command line, run `bolt task run puppet_conf action=<ACTION> section=<SECTION> setting=<SETTING>`.

For example, to check the status of the agent graph setting in `puppet.conf`, run:

* With PE, run `puppet task run puppet_conf action=get section=agent setting=graph --nodes neptune`
* With Bolt, run `bolt task run puppet_conf action=get section=agent setting=graph --nodes neptune --modules ~/modules`

To set the value of the agent graph setting in `puppet.conf`, specify a value with the `set` action:

* With PE, run `puppet task run puppet_conf action=set section=agent setting=graph value=true --nodes neptune`
* With Bolt, run `bolt task run puppet_conf action=set section=agent setting=graph value=true --nodes neptune --modules ~/modules`

You can also run tasks in the PE console. See PE task documentation for complete information.

## Reference

To view the available actions and parameters, on the command line, run `puppet task show puppet_conf` or see the puppet_conf module page on the [Forge](https://forge.puppet.com/puppetlabs/puppet_conf/tasks).

For a complete list of `puppet.conf` options, see the [`puppet.conf`](https://docs.puppet.com/puppet/latest/config_file_main.html) documentation.

## Getting Help

To display help for the package task, run `puppet task show puppet_conf`

To show help for the task CLI, run `puppet task run --help` or `bolt task run --help`
