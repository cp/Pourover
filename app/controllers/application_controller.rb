class ApplicationController < ActionController::Base
  protect_from_forgery

  private

  def authenticate
    redirect_to new_user_session_path unless current_user
  end

end
