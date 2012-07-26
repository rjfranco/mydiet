require 'spec_helper'

describe MealPlan do
  plan = FactoryGirl.build :meal_plan
  new_plan = FactoryGirl.build :meal_plan

  it "should have a valid factory" do
    plan.should be_valid
  end

  it "should disable previously active plans" do
    plan.active.should eq false
    puts "plan is #{plan}"
    new_plan.active.should eq true
    puts "new_plan is #{new_plan}"
  end
end