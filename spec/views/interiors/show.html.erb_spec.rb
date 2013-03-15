require 'spec_helper'

describe "interiors/show" do
  before(:each) do
    @interior = assign(:interior, stub_model(Interior))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
