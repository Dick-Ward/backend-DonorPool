class UserSerializer < ActiveModel::Serializer
  attributes :user, :featured, :relevant_updates, :charities_list


 def user
  {id: object.id,
     first_name: object.first_name,
     last_name: object.last_name,
     user_name: object.user_name,
     picture: object.picture,
     email: object.email,
     supported: supported_charities}
 end

 def supported_charities
   object.supported_charities.map{|charity| {id: charity.id, name: charity.name, tagline: charity.tagline, URL: charity.URL, icon: charity.icon, pledge: object.supports.find_by(charity_id: charity.id).donation, support_id: object.supports.find_by(charity_id: charity.id).id  }}
 end


 def featured
   users = User.select{|useraccount| (useraccount.featured == true)}
   users.shuffle.map{|user| {id: user.id,
      first_name: user.first_name,
      last_name: user.last_name,
      picture: user.picture,
      supported: user.supported_charities}}.first(3)
 end

 def relevant_updates
     updates = Update.all
     updateMap = updates.select{|update| update.charity.supporters.map{|support| support.id}.include?(object.id)}
     updateMapSorted = updateMap.sort{|a,b| a.created_at <=> b.created_at}
     updateMapSorted.map{|update|
     {content: update.content,
             created_at: update.created_at,
             id: update.id,
             picture: update.picture,
             title: update.title,
             charity_name: update.charity.name,
             charity_id: update.charity_id
             }}.first(10)
 end

 def charities_list
   charity_list = Charity.all.sort{|a,b| a.name <=> b.name}
   charity_list
 end

end
