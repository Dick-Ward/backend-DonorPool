class SupportsController < ApplicationController

  def create
    support = Support.new(user_id: params[:user_id], charity_id: params[:charity_id], donation: params[:amount] )
    if support.save
      updates = support.charity.updates
      updateMap = updates.map{|update|
      {content: update.content,
              created_at: update.created_at,
              id: update.id,
              picture: update.picture,
              title: update.title,
              charity_name: update.charity.name,
              charity_id: update.charity_id
              }}
      render json: {updates: updateMap}
    else
      render json: {error: "Unable to complete"}, status: 400
    end
  end

  def update
    user = User.find_by(id: params[:user_id])
    support = Support.find_by(id: params[:id])
    support.update(donation: params[:donation])
    render json:  user.supported_charities.map{|charity| {id: charity.id, name: charity.name, tagline: charity.tagline, URL: charity.URL, icon: charity.icon, pledge: user.supports.find_by(charity_id: charity.id).donation, support_id: user.supports.find_by(charity_id: charity.id).id  }}
  end

end
