# This controller will contain all application level functions that 
# require user authenication.
# If an application level function exists that doesn't require authentication, 
# it should be placed in application_controller.rb
# All controllers that require authentication will subclass from this
# controller.  
class AuthenticatedController < ApplicationController
	before_filter :authenticate_user!
  #before_filter :check_activation!
end
