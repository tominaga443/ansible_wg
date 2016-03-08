require 'spec_helper'
set :request_pty, true

describe service('firewalld'), :if => os[:family] == 'redhat' do
  it { should_not be_enabled }
  it { should_not be_running }
end

describe service('sshd') do
  it { should be_enabled}
  it { should be_running}
end

describe port(22) do
  it { should be_listening}
end

describe command('date') do
  its(:stdout) { should match /JST/ }
end

describe command('strings /etc/localtime') do
  its(:stdout) { should match /JST-9/ }
end

describe selinux do
  it { should be_disabled }
end

describe file('/etc/selinux/config') do
  it { should be_file }
  it { should be_owned_by 'root' }
  it { should be_grouped_into 'root' }
  it { should be_mode 644 }
  its(:content) { should match(/^SELINUX=disabled$/) }
  its(:content) { should match(/^SELINUXTYPE=targeted$/) }
end

describe file('/etc/yum.repos.d/CentOS-Base.repo') do
  it { should be_file }
  its(:content) { should match(/.*ftp.riken.jp.*/) }
  its(:content) { should match(/^baseurl.*/) }
  its(:content) { should match(/^#mirrorlist.+$/)}
end

describe user('root') do
  it { should exist }
  it { should have_login_shell '/bin/bash' }
end

describe user ('vagrant') do
  it { should exist}
  it { should have_login_shell '/bin/bash' }
  it { should have_authorized_key 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC46dqsMuBlcHr4o2WCuhKnaP62f51ip7Zip9USPQoUB/DuM35YvadtZOqn1KpBOZoeKJi3S+GOZHXc31k60Qwz37aKBiEF7SfXSUJhO6GHVYxvzZCTZd2IRnspL8JF7gaLz7gSm2SRPhxv+h+dhuToKWWFWV2Ve/+CpguGznWS5Rk2oJS6nvVjF3Tcudqqgezo+MUj+muSslR5T41+Br3F0VOZ7n8r1IVZeiQ/6Q2+mh2I+dVl7mB/2QVRLqTOqHLVYby6pXFwQpVEeKi0EEY1rEU2BfIkPzm4IAqW/tElQV/IDpiG8JQPFbLLuc1YdvtxSYI+f5ihw8jjkb/KiWxN vagrant@ansible' }
end
