class UsersController < ApplicationController

  def index
    users = User.all
    render json: users
  end


  def create
    user = User.new(user_name: params[:user_name], password: params[:password], first_name: params[:first_name], last_name: params[:last_name], email: params[:email])
    if user.save
      render json:  {token: issue_token({id: user.id}), data: UserSerializer.new(user)}
    else
      render json: {error: "Invalid username or password"}, status: 401
    end
  end

  def show
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

  def create_charity
    user = User.new(user_name: params[:username], password: params[:password], charity_manager: true)
    if user.save
      charity = Charity.new(name: params[:charityName], tagline: params[:tagline], URL: params[:URL], mission: params[:mission],  icon: params[:icon], picture: params[:picture] )
      if charity.save
        management = Management.create(user_id: user.id, charity_id: charity.id)
        render json:  {token: issue_token({id: user.id}), data: UserSerializer.new(user)}
      end
    else
      render json: {error: "Invalid username or password"}, status: 401
    end
  end

  # name
  # tagline
  # URL
  #
  # picture
  # icon
  # mission





end
