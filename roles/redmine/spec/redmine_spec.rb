require 'spec_helper'
set :request_pty, true

%w{postgresql httpd gcc ImageMagick gcc gcc-c++}.each do |pkg|
  describe package(pkg), :if => os[:family] == 'redhat' do
    it { should be_installed }
  end
end

%w{postgresql httpd}.each do |srv|
  describe service(srv), :if => os[:family] == 'redhat' do
    it { should be_enabled }
    it { should be_running }
  end
end

%w{80 5432}.each do |port|
  describe port(port) do
    it { should be_listening }
  end
end

describe selinux do
  it { should be_permissive }
end
