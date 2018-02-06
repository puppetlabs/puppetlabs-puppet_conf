#!/opt/puppetlabs/puppet/bin/ruby
require 'json'
require 'open3'
require 'puppet'

def set(setting, section, value)
  cmd = ['puppet','config','set']
  cmd += ['--section', section] if section
  cmd += [setting, value]
  _stdout, stderr, status = Open3.capture3(*cmd)
  raise Puppet::Error, stderr if status != 0
  { status: value, setting: setting, section: section }
end

def get(setting, section, _value)
  cmd = ['puppet','config','print']
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
