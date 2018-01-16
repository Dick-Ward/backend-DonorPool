class FeaturedSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :picture, :supported

  def supported

    object.supported_charities.map{|charity| charity.name}

  end
end
