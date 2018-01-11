class AuthController < ApplicationController

  def create
      donor = Donor.find_by(email: params[:email])
      if donor && donor.authenticate(params[:password])
        render json: {email: donor.email, id: donor.id, token: issue_token({id: donor.id})}
      else
        render json: {error: "Invalid donorname or password"}, status: 401
      end
  end

    def show
      token = request.headers['Authorization']
      decoded_token = JWT.decode(token, ENV['secret'], true, {:algorithm => 'HS256'})
      id = decoded_token.first['id']
      donor = User.find_by(id: id)
      if donor
        render json: {email: donor.email, id: donor.id, token: issue_token({id: donor.id})}

      else
        render json: {error: "Invalid token"}, status: 401
      end
    end

end
