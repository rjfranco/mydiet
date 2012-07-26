require 'spec_helper'

describe MealPlan do
  oldplan     = FactoryGirl.build :meal_plan
  currentplan = FactoryGirl.build :meal_plan

  it "should disable previously active plans" do
    MealPlan.active.should be currentplan
  end
end
