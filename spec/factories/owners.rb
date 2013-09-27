# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :owner do
    first_name "Zach"
    last_name "Young"
    email "zachyoung@test.com"
    company "derp"
  end
end
