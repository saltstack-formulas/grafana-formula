control 'Grafana configuration' do
  title 'should match desired lines'

  describe file('/etc/grafana/grafana.ini') do
    it { should be_file }
    it { should be_owned_by 'root' }
    it { should be_grouped_into 'grafana' }
    its('mode') { should cmp '0640' }
    its('content') { should include 'File managed by Salt' }
    its('content') { should include 'Your changes will be overwritten.' }
    its('content') { should include 'instance_name' }
    its('content') { should include 'client_secret' }
    its('content') { should include 'admin_user' }
  end
end
