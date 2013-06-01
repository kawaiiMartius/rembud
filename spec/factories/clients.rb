# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :client do
    name "Some Name"
    email "some@example.com"
    phone "+38 (093) 112-23-51"
  end
end
