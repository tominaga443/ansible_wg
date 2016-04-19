require 'spec_helper'
set :request_pty, true

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

describe user('root') do
  it { should exist }
  it { should have_login_shell '/bin/bash' }
end
