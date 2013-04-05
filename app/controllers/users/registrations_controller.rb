class Users::RegistrationsController < Devise::RegistrationsController  
  def resource_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :current_residence_id)
  end
  private :resource_params
end
