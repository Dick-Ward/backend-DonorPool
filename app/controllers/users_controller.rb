class UsersController < ApplicationController

  def index
    users = User.all
    render json: users
  end


  def create
    user = User.new(user_name: params[:user_name], password: params[:password])
    if user.save
      render json: {email: user.email, id: user.id, token: issue_token({id: user.id})}
    else
      render json: {error: "Invalid username or password"}, status: 401
    end
  end
end
