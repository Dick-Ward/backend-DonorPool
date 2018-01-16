class UserSerializer < ActiveModel::Serializer
  attributes :id, :user_name, :support



 def support
   object.supported_charities.map{|charity| charity.name}

 end
end
