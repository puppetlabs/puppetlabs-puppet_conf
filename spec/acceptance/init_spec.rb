# frozen_string_literal: true

require 'spec_helper_acceptance'

describe 'puppet_conf task' do
  describe 'puppet_conf' do
    it 'set/get a puppet configuration' do
      result = run_bolt_task('puppet_conf', 'action' => 'set', 'setting' => 'vardir', 'value' => '/tmp/bla')
      expect(result.exit_code).to eq(0)
      expect(result['result']['status']).to match %r{.*/tmp/bla}
      expect(result['result']).to include 'setting' => 'vardir', 'section' => 'main'

      result = run_bolt_task('puppet_conf', 'action' => 'get', 'setting' => 'vardir')

      expect(result.exit_code).to eq(0)
      expect(result['result']['status']).to match %r{.*/tmp/bla}
      expect(result['result']).to include 'setting' => 'vardir', 'section' => 'main'
    end

    it 'set/get a puppet configuration with section' do
      result = run_bolt_task('puppet_conf', 'action' => 'set', 'setting' => 'storeconfigs', 'value' => 'false', 'section' => 'server')

      expect(result.exit_code).to eq(0)
      expect(result['result']).to include 'status' => 'false', 'setting' => 'storeconfigs', 'section' => 'server'

      result = run_bolt_task('puppet_conf', 'action' => 'get', 'setting' => 'storeconfigs', 'section' => 'server')

      expect(result.exit_code).to eq(0)
      expect(result['result']).to include 'status' => 'false', 'setting' => 'storeconfigs', 'section' => 'server'
    end
  end
end
