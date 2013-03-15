require 'spec_helper'

describe "interiors/edit" do
  before(:each) do
    @interior = assign(:interior, stub_model(Interior))
  end

  it "renders the edit interior form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", interior_path(@interior), "post" do
    end
  end
end
