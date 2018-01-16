class UpdatesController < ApplicationController

  def index
    updates = Update.all
    render json: updates.map{|update| {title: update.title, content: update.content, picture: update.picture, charity_name: update.charity.name}}
  end

  def user_relevant_updates
    updates = Update.all
    if params[:id] != "undefined"
      render json: updates.select{|update| update.charity.supporters.map{|sport| sport.id}.include?(params[:id].to_i)}

    else
      render json: updates

    end
  end

end
