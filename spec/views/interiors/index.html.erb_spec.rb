require 'spec_helper'

describe "interiors/index" do
  before(:each) do
    assign(:interiors, [
      stub_model(Interior),
      stub_model(Interior)
    ])
  end

  it "renders a list of interiors" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
