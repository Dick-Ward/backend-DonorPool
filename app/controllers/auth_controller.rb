class AuthController < ApplicationController

  def create
      user = User.find_by(user_name: params[:user_name])
      if user && user.authenticate(params[:password])
        render json: {first_name: user.first_name, last_name: user.last_name, user_name: user.user_name, picture: user.picture, email: user.email, featured: user.featured, id: user.id, token: issue_token({id: user.id}), supported_charities: user.supported_charities, transactions: user.transactions }
      else
        render json: {error: "Invalid username or password"}, status: 401
      end
  end


    def show
      token = request.headers['Authorization']
      decoded_token = JWT.decode(token, ENV['secret'], true, {:algorithm => 'HS256'})
      id = decoded_token.first['id']
      user = User.find_by(id: id)
      if user
        render json: {first_name: user.first_name, last_name: user.last_name, user_name: user.user_name, picture: user.picture, email: user.email, featured: user.featured, id: user.id, token: issue_token({id: user.id}), supported_charities: user.supported_charities, transactions: user.transactions }

      else
        render json: {error: "Invalid token"}, status: 401
      end
    end

    def dummy
      

      render json:  {jwt: issue_token({id: current_user.id}), user: UserSerializer.new(current_user)}
    end

end
