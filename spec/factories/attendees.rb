# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :attendee, :class => 'Attendees' do
    event_id 1
    email "testemail@testemail.com"
  end
end
