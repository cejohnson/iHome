require 'spec_helper'

describe "interiors/new" do
  before(:each) do
    assign(:interior, stub_model(Interior).as_new_record)
  end

  it "renders new interior form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", interiors_path, "post" do
    end
  end
end
