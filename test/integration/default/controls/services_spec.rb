control 'Grafana service' do
  impact 0.5
  title 'should be running and enabled'

  describe service('grafana-server') do
    it { should be_enabled }
    it { should be_running }
  end

  describe command('service grafana-server status') do
    its('stdout') { should match 'running' }
    its('exit_status') { should eq 0 }
  end

  describe file('/var/log/grafana/grafana.log') do
    its('content') { should_not include 'Failed' }
  end
end
