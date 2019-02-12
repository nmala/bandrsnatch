class Api::V1::UserCollabsController < ApplicationController
  def index
    @user_collabs = UserCollab.all
    render json: @user_collabs, status: :ok
  end

  def create
    @user_collab = UserCollab.create(user_id: params[:user_id], collab_id: params[:collab_id])
    render json: @user_collab, status: :ok
  end
end
