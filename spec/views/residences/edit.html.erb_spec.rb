require 'spec_helper'

describe "residences/edit" do
  before(:each) do
    @residence = assign(:residence, stub_model(Residence))
  end

  it "renders the edit residence form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", residence_path(@residence), "post" do
    end
  end
end
