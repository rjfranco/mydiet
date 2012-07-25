require 'spec_helper'

describe "days/new" do
  before(:each) do
    assign(:day, stub_model(Day).as_new_record)
  end

  it "renders new day form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => days_path, :method => "post" do
    end
  end
end
