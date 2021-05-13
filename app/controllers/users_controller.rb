class UsersController < ApplicationController
  # skip_before_action :authorized

  def login
    @user = User.find_by(username: user_params[:username])
    if @user && @user.password == user_params[:password]
      # render json: UserSerializer.new(@user).serialized_json
      render :json => UserSerializer.new(@user).serialized_json
    else
      render :json => { "msg": "Login failed.." }
    end
  end


  def index
    @users = User.all
    render json: UserSerializer.new(@users).serialized_json
  end

  def create
    @user = User.new(user_params)
    if @user.save
      # token = JWT.encode({ :user_id => @user.id }, ENV['SUPER_SECRET_KEY'])
      # render :json => { "token": token }
      render :json => @user
    else
      render :json => { "msg": "Signup failed.." }
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :password)
  end
end