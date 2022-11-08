class StatusController < ApplicationController
  def index
    render json: {
      name: 'Recommendations API',
      status: :ok
    }
  end
end