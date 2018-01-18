class SupportsController < ApplicationController

  def create
    support = Support.new(user_id: params[:user_id], charity_id: params[:charity_id], donation: params[:amount] )
    if support.save
      render json: {message: "success"}, status: 200
    else
      render json: {error: "Unable to complete"}, status: 400
    end
  end
end
