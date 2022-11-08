class ApplicationController < ActionController::API

  def current_user
    User.find_by(api_token: request.headers['Authorization'])
  end

end
