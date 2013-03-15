require 'spec_helper'

describe "residences/show" do
  before(:each) do
    @residence = assign(:residence, stub_model(Residence))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
