control 'Grafana package' do
  title 'should be installed'

  describe package('grafana') do
    it { should be_installed }
  end
end
