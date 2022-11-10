class ApplicationController < ActionController::API
  
  before_action :authenticate_user!

  def current_user
    User.find_by(api_token: request.headers['Authorization'])
  end

  def authenticate_user!
    render json: { error: "Acesso Negado" }, status: 401 unless current_user
  end

end
