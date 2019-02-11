class Api::V1::CollabsController < ApplicationController
  before_action :find_collab, only: [:update, :show]

  def create
    @collab = Collab.create(collab_params)
    render json: @collab, status: :ok
  end

  def show
    render json: @collab, status: :ok
  end

  def update
    @collab.
  end

  private

  def collab_params
    params.require(:collab).permit(:name, :drummers, :guitars, :basses, :keyboards, :rappers, :singers, :producers)
  end

  def find_collab
    @collab = Collab.find(params[:id])
  end
end
