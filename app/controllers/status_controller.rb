class StatusController < ApplicationController
  
  skip_before_action :authenticate_user!

  def index
    render json: {
      name: 'Recommendations API',
      status: :ok
    }
  end
  
end