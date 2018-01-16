class UserSerializer < ActiveModel::Serializer
  attributes :id, :beef, :user_name

  def beef
    "yo i'm a beef"
  end
end
