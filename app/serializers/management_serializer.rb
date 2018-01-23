class ManagementSerializer < ActiveModel::Serializer
  attributes :id, :user, :charity, :updates, :supporters

  belongs_to :charity

  def user
    {id: object.user.id, user_name: object.user.user_name, charity_manager: object.user.charity_manager }
  end

  def charity
    object.charity
  end

  def updates
    object.charity.updates
  end

  def supporters
    object.charity.supporters.map{|supporter| {id: supporter.id, first_name: supporter.first_name, last_name: supporter.last_name}}
  end


end
