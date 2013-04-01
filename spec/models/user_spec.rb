require 'spec_helper'

describe User do
  before do
      @user = FactoryGirl.create(:user_with_residence)
      @user.residences << FactoryGirl.create(:secondresidence)
  end
  
  describe "current residence" do
    it "should start out as the first residence" do
      @user.current_residence.should equal(@user.residences[0])
    end
    
    it "should be able to be changed" do
      @user.current_residence_id = @user.residences[1].id
      @user.current_residence.should equal(@user.residences[1])
    end
  end
end
