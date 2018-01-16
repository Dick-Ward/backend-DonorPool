class AuthController < ApplicationController

  def create
      user = User.find_by(user_name: params[:user_name])
      if user && user.authenticate(params[:password])
        jwt_token = issue_token({id: user.id})
        render json:  {token: jwt_token, data: UserSerializer.new(user)}
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
        render json:  {token: issue_token({id: current_user.id}), data: UserSerializer.new(current_user)}
      else
        render json: {error: "Invalid token"}, status: 401
      end
    end

    def dummy
      render json:  {token: issue_token({id: current_user.id}), data: UserSerializer.new(current_user)}
    end

end
