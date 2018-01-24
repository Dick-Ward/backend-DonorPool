class CharitiesController < ApplicationController

  def index
    charities = Charity.all
    render json: charities
  end

  def show
    charity = Charity.find_by(id: params[:id])
    render json: charity
  end

  def update
  
    charity = Charity.find_by(id: params[:id])
    if charity.update(name: params[:name], tagline: params[:tagline], URL: params[:URL], mission: params[:mission], icon: params[:icon], picture: params[:picture])
      render json: charity
    else
      render json: {message: "error!"}
    end
  end

end
