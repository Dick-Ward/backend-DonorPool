class UpdatesController < ApplicationController

  def index
    updates = Update.all
    render json: updates.map{|update| {title: update.title, content: update.content, picture: update.picture, charity_name: update.charity.name}}
  end

  def user_relevant_updates
    if current_user
      render json: {thing: "thing"}
    else
      render json: {thing: "stuff"}

    end
  end

end
