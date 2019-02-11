class Api::V1::UsersController < ApplicationController
  before_action :find_user, only: [:edit, :show]

  def create
    @user = User.create(user_params)
    render json: @user, status: :ok
  end

  def show
    render json: @user, status: :ok
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :specialty, :location)
  end

  def find_user
    @user = User.find(params[:id])
  end
end
