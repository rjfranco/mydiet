require 'spec_helper'

describe "meals/new" do
  before(:each) do
    assign(:meal, stub_model(Meal,
      :type => "",
      :status => "MyString",
      :optional => false,
      :order => 1
    ).as_new_record)
  end

  it "renders new meal form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => meals_path, :method => "post" do
      assert_select "input#meal_type", :name => "meal[type]"
      assert_select "input#meal_status", :name => "meal[status]"
      assert_select "input#meal_optional", :name => "meal[optional]"
      assert_select "input#meal_order", :name => "meal[order]"
    end
  end
end
