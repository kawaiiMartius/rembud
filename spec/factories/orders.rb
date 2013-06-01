# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :order do
    client
    started_at "2013-01-10"
    stage      "Starting"
  end
end
