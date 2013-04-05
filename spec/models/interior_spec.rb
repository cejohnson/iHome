require 'spec_helper'

describe Interior do
  before do
      @user = FactoryGirl.create(:user_with_residence_with_interior)
  end
  
  it "should be able to set default rooms" do
    @user.current_residence.interior.set_rooms
    @user.current_residence.interior.rooms.should_not equal(NULL)
  end
end
