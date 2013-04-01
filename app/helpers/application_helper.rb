module ApplicationHelper
  def current_residence
    @current_residence ||= current_user.current_residence
  end
end
