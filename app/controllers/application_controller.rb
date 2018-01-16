class ApplicationController < ActionController::API
  def user_id
    current_user.id
  end

  def current_user
    id = decoded_token

    if id
      @user ||= User.find_by(id: id)
    end
  end

  def decoded_token
    begin
      JWT.decode(token, ENV['secret'], "HS256")[0]["id"]
    rescue JWT::DecodeError
      nil
    end

  end

  def token
    request.headers["Authorization"]
  end

  def issue_token(payload)
    JWT.encode(payload, ENV['secret'], "HS256")
  end
end
