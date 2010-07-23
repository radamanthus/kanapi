class ApplicationController < ActionController::Base
  protect_from_forgery
  layout 'application'
  
  before_filter :abbreviate_current_user
  
  private
  
  # Reference the currently logged in member as @u.
  def abbreviate_current_user
    @u ||= current_user
  end
  
end
