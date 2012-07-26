require 'spec_helper'

describe "meal_plans/edit" do
  before(:each) do
    @meal_plan = assign(:meal_plan, stub_model(MealPlan,
      :active => false
    ))
  end

  it "renders the edit meal_plan form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => meal_plans_path(@meal_plan), :method => "post" do
      assert_select "input#meal_plan_active", :name => "meal_plan[active]"
    end
  end
end
