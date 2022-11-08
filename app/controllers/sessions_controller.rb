class SessionsController < ApplicationController

  def create
    user = User.find_for_authentication(email: params[:email])
    if user.valid_password?(params[:password])
      user.set_api_token
      render json: { name: user.name, api_token: user.api_token }, status: 200
    else
      render json: { error: "User or password is invalid" }, status: 422
    end
  end
end