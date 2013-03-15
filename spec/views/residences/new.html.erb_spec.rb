require 'spec_helper'

describe "residences/new" do
  before(:each) do
    assign(:residence, stub_model(Residence).as_new_record)
  end

  it "renders new residence form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", residences_path, "post" do
    end
  end
end
