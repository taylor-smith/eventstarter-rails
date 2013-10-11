# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :event do
    location "MyString"
    time "2013-10-08 10:49:30"
    deadline "2013-10-08 10:49:30"
    min_number 1
    max_number 1
    name "MyString"
    desc "MyString"
  end
end
