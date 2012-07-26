require 'spec_helper'

describe "meal_plans/new" do
  before(:each) do
    assign(:meal_plan, stub_model(MealPlan,
      :active => false
    ).as_new_record)
  end

  it "renders new meal_plan form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => meal_plans_path, :method => "post" do
      assert_select "input#meal_plan_active", :name => "meal_plan[active]"
    end
  end
end
