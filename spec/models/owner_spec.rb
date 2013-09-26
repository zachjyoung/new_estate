require 'spec_helper'

describe Owner do
  it { should have_valid(:first_name).when('zach') }
  it { should_not have_valid(:first_name).when(nil, '') }
  it { should validate_presence_of(:first_name) }

  it { should have_valid(:last_name).when('young') }
  it { should_not have_valid(:last_name).when(nil, '') }
  it { should validate_presence_of(:last_name) }

  it { should have_valid(:email).when('zachyoung@test.com') }
  it { should_not have_valid(:email).when(nil, '') }
  it { should validate_presence_of(:email) }

  it { should have_valid(:company).when('launch') }
end