require 'spec_helper'

describe "days/index" do
  before(:each) do
    assign(:days, [
      stub_model(Day),
      stub_model(Day)
    ])
  end

  it "renders a list of days" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
