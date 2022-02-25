class MainController < ApplicationController
  def index
		if session[:user_id]
			#.find_by as oppossed to .find will not throw an error if user is not found (in case user was deleted while still logged in, in the session)
			@user = User.find_by(id: session[:user_id])
		end
  end
end