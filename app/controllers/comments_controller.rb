class CommentsController < ApplicationController

  def create
    recommendation = Recommendation.find(params[:recommendation_id])
    comment = recommendation.comments.new(content: params[:content], user: current_user)

    if comment.save
      render json: { }, status: 201
    else
      render json: { error: comment.error.full_messages.first }, status: 422
    end
  end

end