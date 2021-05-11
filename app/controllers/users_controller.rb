class UsersController < ApplicationController
  before_action :find_user, only: [:show, :destroy]

  def login
  end

  def index
    users = User.all
    render json: UserSerializer.new(users).serialized_json
  end

  def show
  end

  def new
    user = User.new
  end

  def create
    user = User.new(params[:user])
    if @user.save
      render json: UserSerializer.new(users).serialized_json
    else
      flash[:error] = "Something went wrong"
      redirect_to "new"
    end
  end

  private

  def find_user
    user = User.find_by(id: params[:id])
  end

  def user_params
    params.require(:user).permit(:username, :password)
  end
end
