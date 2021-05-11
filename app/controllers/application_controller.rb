class ApplicationController < ActionController::API
  def current_user
    token = request.headers["token"]
    begin
      payload = JWT.decode token, "myS3cr3t", true
    rescue JWT::VerificationError
      render :json => { "msg": "Login first.." }
      return nil
    end
    @user = User.find_by(id: payload[0]["user_id"])
  end

  def authorized
    !!current_user
  end
end
