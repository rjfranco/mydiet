# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :meal do
    type ""
    status "MyString"
    optional false
    order 1
  end
end
