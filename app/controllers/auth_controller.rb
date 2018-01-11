class AuthController < ApplicationController

  def create
      user = User.find_by(email: params[:email])
      if user && user.authenticate(params[:password])
        render json: {email: user.email, id: user.id, token: issue_token({id: user.id})}
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
        render json: {email: user.email, id: user.id, token: issue_token({id: user.id})}

      else
        render json: {error: "Invalid token"}, status: 401
      end
    end

end
