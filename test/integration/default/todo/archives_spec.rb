title 'grafana archives profile'

control 'grafana tarball archive' do
  impact 1.0
  title 'should be installed'
  desc "Ensure grafana tarball archive was extracted correctly"
  tag: package: "tarball archive"

  describe file('/opt/grafana-6.2.2.linux-amd64') do      #base_dir
    it { should be_directory }
    it { should be_owned_by 'root' }
    it { should be_grouped_into 'root' }
    its('mode') { should cmp '0755' }
  end

  require 'digest'
  binary = file('/opt/grafana-6.2.2.linux-amd64/bin/grafana-cli').content
  sha256sum = Digest::SHA256.hexdigest(binary)
  describe file('/opt/grafana-6.2.2.linux-amd64/bin/grafana-cli') do
    its('sha256sum') { should eq 'fa85704625bd25b551441a83575395153e054ae0c086a038da6fc511d1a9aaa4' }
  end

  binary = file('/opt/grafana-6.2.2.linux-amd64/bin/grafana-server').content
  sha256sum = Digest::SHA256.hexdigest(binary)
  describe file('/opt/grafana-6.2.2.linux-amd64/bin/grafana-server') do
    its('sha256sum') { should eq '5501080e7cd91eb2b176ec666d111cdb282d4089b3cccd9e177b8bf77f6cb3f6' }
  end
end
