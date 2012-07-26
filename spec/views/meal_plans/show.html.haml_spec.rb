require 'spec_helper'

describe "meal_plans/show" do
  before(:each) do
    @meal_plan = assign(:meal_plan, stub_model(MealPlan,
      :active => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/false/)
  end
end
