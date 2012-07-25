require 'spec_helper'

describe Day do
  day = FactoryGirl.build(:day)

  it "should have a valid factory" do
    day.should be_valid
  end

  it "should have a title" do
    day.title.should_not raise_error
  end
end
