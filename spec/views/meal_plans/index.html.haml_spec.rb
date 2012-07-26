require 'spec_helper'

describe "meal_plans/index" do
  before(:each) do
    assign(:meal_plans, [
      stub_model(MealPlan,
        :active => false
      ),
      stub_model(MealPlan,
        :active => false
      )
    ])
  end

  it "renders a list of meal_plans" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
