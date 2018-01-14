class UsersController < ApplicationController

  def index
    users = User.all
    render json: users
  end


  def create
    user = User.new(user_name: params[:user_name], password: params[:password])
    if user.save
      render json: {first_name: user.first_name, last_name: user.last_name, user_name: user.user_name, picture: user.picture, email: user.email, featured: user.featured, id: user.id, token: issue_token({id: user.id}), supported_charities: user.supported_charities, transactions: user.transactions }
    else
      render json: {error: "Invalid username or password"}, status: 401
    end
  end

  def show
    user = User.find_by(id: params[:id])
    if user
      render json: {first_name: user.first_name, last_name: user.last_name, user_name: user.user_name, picture: user.picture, email: user.email, featured: user.featured, id: user.id, token: issue_token({id: user.id}), supported_charities: user.supported_charities, transactions: user.transactions }
    else
      render json: {error: "Invalid username or password"}, status: 401
    end
  end


end
