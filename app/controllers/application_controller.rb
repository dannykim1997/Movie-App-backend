# require_relative '../../env'


class ApplicationController < ActionController::API

def check_if_logged_in?
  if request.headers['user-id'].nil?
    render :json => {'msg': 'Login first....'}
  end
  @user = User.find_by(id: request.headers['user-id'])
end










end
  # before_action :authorized

  # def encode_token(payload)
  #   JWT.encode payload, ENV['SUPER_SECRET_KEY']
  # end

  # def current_user
  #     if auth_headers 
  #       token = request.headers['token']
  #     begin
  #       payload = JWT.decode token, ENV['SUPER_SECRET_KEY'], true
  #     rescue JWT::VerificationError
  #       render :json => { "msg": "Login first.."}
  #       return nil
  #     end
  #     @user = User.find_by(id: payload[0]["user_id"])
  #     end
  # end

  # def auth_headers
  #   request.headers["Authorization"]
  # end

  # def authorized
  #   !!current_user
  # end



  # before_action :authorized

  # def encode_token(payload)
  #   # should store secret in env variable
  #   JWT.encode(payload, ENV['SUPER_SECRET_KEY'])
  # end

  # def auth_header
  #   # { Authorization: 'Bearer ' }
  #   request.headers['Authorization']
  # end

  # def decoded_token
  #   if auth_header
  #     token = auth_header.split('.')[1]
  #     # header: { 'Authorization': 'Bearer ' }
  #     begin
  #       JWT.decode(token, ENV['SUPER_SECRET_KEY'], true, algorithm: 'HS256')
  #     rescue JWT::DecodeError
  #       nil
  #     end
  #   end
  # end

  # def current_user
  #   if decoded_token
  #     user_id = decoded_token[0]['user_id']
  #     @user = User.find_by(id: user_id)
  #     @user
  #   end
  # end

  # def logged_in?
  #   !!current_user
  # end

  # def authorized
  #   render json: { message: 'Please log in' }, status: :unauthorized unless logged_in?
  # end



