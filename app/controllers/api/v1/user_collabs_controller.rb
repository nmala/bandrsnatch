class Api::V1::UserCollabsController < ApplicationController
  def index
    @user_collabs = UserCollab.all
    render json: @user_collabs, status: :ok
  end

  def create
    @user_collab = UserCollab.create(user_id: params[:user_id], collab_id: params[:collab_id])

    # @user_collab.talent_tracker
    # @user_collab.save
    render json: @user_collab, status: :ok
  end
end
