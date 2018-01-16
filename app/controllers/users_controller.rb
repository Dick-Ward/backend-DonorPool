class UsersController < ApplicationController

  def index
    users = User.all
    render json: users
  end


  def create
    user = User.new(user_name: params[:user_name], password: params[:password])
    if user.save
      render json:  {token: issue_token({id: user.id}), data: UserSerializer.new(current_user)}
    else
      render json: {error: "Invalid username or password"}, status: 401
    end
  end

  def show
    byebug
    user = User.find_by(id: params[:id])
    if user
      render json:  {token: issue_token({id: current_user.id}), data: UserSerializer.new(current_user)}
    else
      render json: {error: "Invalid username or password"}, status: 401
    end
  end

  def featured
    users = User.select{|useraccount| (useraccount.featured == true) && (useraccount.id != current_user.id)}
    if users
      render json: users, each_serializer: FeaturedSerializer
    end
  end




end
