class UsersController < ApplicationController
  def index
    @users = User.all
    render json: UserSerializer.new(@users).serialized_json
  end

  def create
    @user = User.create(user_params)
    if @user.persisted?
      # token = JWT.encode({ :user_id => @user.id }, ENV['SUPER_SECRET_KEY'])
      # render :json => { "token": token }
      render :json => { "msg": "Now login.." }
    else
      render :json => { "msg": "Signup failed.." }
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :password)
  end
end
