module ApplicationHelper
  def current_residence
    @current_residence ||= current_user.current_residence
  end
  
  def new_user?
    !current_user.residences[0]
  end
end
