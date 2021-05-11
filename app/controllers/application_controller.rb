class ApplicationController < ActionController::API
  before_action :authorized

  def encode_token(payload)
    JWT.encode payload, "myS3cr3t"
  end
  
  def current_user
    if auth_headers 
      token = auth_headers.split(' ')[1] 
    begin
      payload = JWT.decode token, "myS3cr3t", true
    rescue JWT::VerificationError
      render :json => { "msg": "Login first.." }
      return nil
    end
    @@user = User.find_by(id: payload[0]["user_id"])
    end
  end

  def auth_headers
    request.headers["Authorization"]
  end

  def authorized
    !!current_user
  end

end
