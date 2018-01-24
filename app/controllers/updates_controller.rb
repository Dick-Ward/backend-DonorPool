class UpdatesController < ApplicationController

  def index
    updates = Update.all
    render json: updates.map{|update| {title: update.title, content: update.content, picture: update.picture, charity_name: update.charity.name}}
  end

  def create
    update = Update.create(charity_id: params[:charityId], title: params[:title], content: params[:content], picture: params[:picture])
    if update.save
      render json: {message: "success"}
    else
      render json: {message: "naah"}
    end
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
