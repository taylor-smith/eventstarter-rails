require 'spec_helper'

describe Attendees do
  before (:each) do
    @attendee = FactoryGirl.create(:attendee)
  end

  it 'should have a valid email' do
    it "should have a valid email address" do 
    email_format = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
    end
  end


end
