#!/opt/puppetlabs/puppet/bin/ruby
# frozen_string_literal: true

require 'json'
require 'open3'
require 'puppet'

def puppet_cmd
  if Gem.win_platform?
    require 'win32/registry'
    installed_dir =
      begin
        Win32::Registry::HKEY_LOCAL_MACHINE.open('SOFTWARE\Puppet Labs\Puppet') do |reg|
          # rubocop:disable Style/RescueModifier
          # Rescue missing key
          dir = reg['RememberedInstallDir64'] rescue ''
          # Both keys may exist, make sure the dir exists
          break dir if File.exist?(dir)

          # Rescue missing key
          reg['RememberedInstallDir'] rescue ''
          # rubocop:enable Style/RescueModifier
        end
      rescue Win32::Registry::Error
        # Rescue missing registry path
        ''
      end

    puppet =
      if installed_dir.empty?
        ''
      else
        File.join(installed_dir, 'bin', 'puppet.bat')
      end
  else
    puppet = '/opt/puppetlabs/bin/puppet'
  end

  # Fall back to PATH lookup if puppet-agent isn't installed
  puppet = 'puppet' unless File.exist?(puppet)

  puppet
end

def set(setting, section, value)
  cmd = [puppet_cmd, 'config', 'set']
  cmd += ['--section', section] if section
  cmd += [setting, value]
  _stdout, stderr, status = Open3.capture3(*cmd)
  raise Puppet::Error, stderr if status != 0
  { status: value, setting: setting, section: section }
end

def get(setting, section, _value)
  cmd = [puppet_cmd, 'config', 'print']
  cmd += ['--section', section]
  cmd += [setting]
  stdout, stderr, status = Open3.capture3(*cmd)
  raise Puppet::Error, stderr if status != 0
  { status: stdout.strip, setting: setting, section: section }
end

def delete(setting, section, _value)
  cmd = [puppet_cmd, 'config', 'delete']
  cmd += ['--section', section]
  cmd += [setting]
  stdout, stderr, status = Open3.capture3(*cmd)
  raise Puppet::Error, stderr if status != 0
  { status: stdout.strip, setting: setting, section: section }
end

params = JSON.parse(STDIN.read)
action = params['action']
setting = params['setting']
section = params['section']
value = params['value']
section = 'main' if section.nil?

begin
  result = if action == 'get'
             get(setting, section, value)
           elsif action == 'delete'
             delete(setting, section, value)
           else
             raise Puppet::Error, 'You must pass a value argument' if value.nil?
             set(setting, section, value)
           end
  puts result.to_json
  exit 0
rescue Puppet::Error => e
  puts({ status: 'failure', error: e.message }.to_json)
  exit 1
end
