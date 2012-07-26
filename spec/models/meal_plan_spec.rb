require 'spec_helper'

describe MealPlan do
  plan = FactoryGirl.build(:meal_plan)

  it "should have a valid factory" do
    plan.should be_valid
  end
end