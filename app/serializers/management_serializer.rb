class ManagementSerializer < ActiveModel::Serializer
  attributes :id, :charity, :updates, :supporters

  belongs_to :charity
  belongs_to :user


  def charity
    object.charity
  end

  def updates
    object.charity.updates
  end

  def supporters
    object.charity.supporters.map{|supporter| {id: supporter.id, first_name: supporter.first_name, last_name: supporter.last_name, donation: supporter.supports.find_by(charity_id: object.charity.id).donation}}
  end


end
