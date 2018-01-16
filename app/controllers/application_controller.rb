class ApplicationController < ActionController::API
  def user_id
    current_user.id
  end

  def current_user
    current_user ||= User.find_by(id: decoded_token)
  end

  def decoded_token
    JWT.decode(token, ENV['secret'], "HS256")[0]["id"]
  end

  def token
    request.headers["Authorization"]
  end

  def issue_token(payload)
    JWT.encode(payload, ENV['secret'], "HS256")
  end
end
