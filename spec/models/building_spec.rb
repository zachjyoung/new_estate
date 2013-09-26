require 'spec_helper'

describe Building do
  it { should have_valid(:street_address).when('33 Harrison Ave') }
  it { should_not have_valid(:street_address).when(nil, '', 'foo') }
  it { should validate_presence_of(:street_address) }

  it { should have_valid(:city).when('Boston') }
  it { should_not have_valid(:city).when(nil, '', 'foo') }
  it { should validate_presence_of(:city) }

  it { should have_valid(:state).when('MA') }
  it { should_not have_valid(:state).when(nil, '', 'foo') }
  it { should validate_presence_of(:state) }

  it { should have_valid(:postal_code).when(02135) }
  it { should_not have_valid(:postal_code).when(nil, '', 'foo') }
  it { should validate_presence_of(:postal_code) }

  it { should have_valid(:description).when('look at this awesome place') }
end

