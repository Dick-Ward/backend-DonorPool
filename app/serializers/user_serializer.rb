class UserSerializer < ActiveModel::Serializer
  attributes :user, :featured, :relevant_updates


def user
  {id: object.id, first_name: object.first_name, last_name: object.last_name, user_name: object.user_name, picture: object.picture, email: object.email}
end

 def featured
   users = User.select{|useraccount| (useraccount.featured == true)}
   users.shuffle.map.first(3){|user| {id: user.id,
      first_name: user.first_name,
      last_name: user.last_name,
      picture: user.picture,
      supported: user.supported_charities.map{|charity| charity.name}}}
 end

 def relevant_updates
     updates = Update.all
     updates.select{|update| update.charity.supporters.map{|support| support.id}.include?(object.id)}
 end

end
