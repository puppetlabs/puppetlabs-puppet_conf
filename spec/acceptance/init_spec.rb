# run a test task
require 'spec_helper_acceptance'

describe 'puppet_conf task' do
  describe 'puppet configuration file' do
    it 'set/get a puppet configuration' do
      result = run_puppet_task(task_name: 'puppet_conf', params: { 'action' => 'set', 'setting' => 'vardir', 'value' => '/tmp/bla' })
      expect_multiple_regexes(result: result, regexes: [%r{setting : vardir}, %r{status : /tmp/bla}, %r{section : main}, %r{Job completed. 1/1 nodes succeeded}])
      result = run_puppet_task(task_name: 'puppet_conf', params: { 'action' => 'get', 'setting' => 'vardir' })
      expect_multiple_regexes(result: result, regexes: [%r{setting : vardir}, %r{status : /tmp/bla}, %r{section : main}, %r{Job completed. 1/1 nodes succeeded}])
    end
    it 'set/get a puppet configuration with section' do
      result = run_puppet_task(task_name: 'puppet_conf', params: { 'action' => 'set', 'setting' => 'storeconfigs', 'value' => 'false', 'section' => 'master' })
      expect_multiple_regexes(result: result, regexes: [%r{setting : storeconfigs}, %r{status : false}, %r{section : master}, %r{Job completed. 1/1 nodes succeeded}])
      result = run_puppet_task(task_name: 'puppet_conf', params: { 'action' => 'get', 'setting' => 'storeconfigs', 'section' => 'master'})
      expect_multiple_regexes(result: result, regexes: [%r{setting : storeconfigs}, %r{status : false}, %r{section : master}, %r{Job completed. 1/1 nodes succeeded}])
    end
  end
end
