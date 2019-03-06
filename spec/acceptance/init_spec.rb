require 'spec_helper_acceptance'

describe 'puppet_conf task' do
  include Beaker::TaskHelper::Inventory
  include BoltSpec::Run

  describe 'puppet_conf' do
    it 'set/get a puppet configuration' do
      result = task_run('puppet_conf', 'action' => 'set', 'setting' => 'vardir', 'value' => '/tmp/bla')

      expect(result.first['status']).to eq 'success'
      expect(result.first['result']).to include 'status' => '/tmp/bla', 'setting' => 'vardir', 'section' => 'main'

      result = task_run('puppet_conf', 'action' => 'get', 'setting' => 'vardir')

      expect(result.first['status']).to eq 'success'
      expect(result.first['result']).to include 'status' => '/tmp/bla', 'setting' => 'vardir', 'section' => 'main'
    end

    it 'set/get a puppet configuration with section' do
      result = task_run('puppet_conf', 'action' => 'set', 'setting' => 'storeconfigs', 'value' => 'false', 'section' => 'master')

      expect(result.first['status']).to eq 'success'
      expect(result.first['result']).to include 'status' => 'false', 'setting' => 'storeconfigs', 'section' => 'master'

      result = task_run('puppet_conf', 'action' => 'get', 'setting' => 'storeconfigs', 'section' => 'master')

      expect(result.first['status']).to eq 'success'
      expect(result.first['result']).to include 'status' => 'false', 'setting' => 'storeconfigs', 'section' => 'master'
    end
  end
end
