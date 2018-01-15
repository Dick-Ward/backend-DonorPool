class CharitiesController < ApplicationController

  def index
    charities = Charity.all
    render json: charities
  end

  def show
    charity = Charity.find_by(id: params[:id])
    render json: charity
  end
end
