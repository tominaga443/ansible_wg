require 'spec_helper'

set :request_pty, true

describe service('mongod') do
  it { should be_enabled }
  it { should be_running }
end

describe port(3000) do
  it { should be_listening }
end
