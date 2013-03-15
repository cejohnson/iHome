require 'spec_helper'

describe "residences/index" do
  before(:each) do
    assign(:residences, [
      stub_model(Residence),
      stub_model(Residence)
    ])
  end

  it "renders a list of residences" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
