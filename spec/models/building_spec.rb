require 'spec_helper'

describe Building do
  it { should have_valid(:street_address).when('33 Harrison Ave') }
  it { should_not have_valid(:street_address).when(nil, '', 'foo') }

  it { should have_valid(:city).when('Boston') }
  it { should_not have_valid(:city).when(nil, '', 'foo') }

  it { should have_valid(:state).when('MA') }
  it { should_not have_valid(:state).when(nil, '', 'food') }

  it { should have_valid(:postal_code).when(02135) }
  it { should_not have_valid(:postal_code).when(nil, '', 'foo') }
  
end
