class ApplicationController < ActionController::Base
  before_action :set_current_user

  def set_current_user
    if session[:user_id]
			#.find_by as oppossed to .find will not throw an error if user is not found (in case user was deleted while still logged in, in the session)
			Current.user = User.find_by(id: session[:user_id])
		end
  end

  def require_user_logged_in!
    redirect_to sign_in_path, alert: "You must be logged in to do that" if Current.user.nil?
  end
end
