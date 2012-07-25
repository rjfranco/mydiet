require 'spec_helper'

describe "days/edit" do
  before(:each) do
    @day = assign(:day, stub_model(Day))
  end

  it "renders the edit day form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => days_path(@day), :method => "post" do
    end
  end
end
