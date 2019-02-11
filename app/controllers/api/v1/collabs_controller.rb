class Api::V1::CollabsController < ApplicationController
  before_action :find_collab, only: [:update, :show]

  def index
    @collabs = Collab.all
    render json: @collabs, status: :ok
  end

  def create
    @collab = Collab.create(collab_params)
    render json: @collab, status: :ok
  end

  def show
    render json: @collab, status: :ok
  end

  def update
    @collab.update(collab_params)
    if @collab.save
      render json: @notes, status: :ok
    else
      render json: { errors: @note.errors.full_messages }, status: :unprocessible_entity
    end
  end

  private

  def collab_params
    params.require(:collab).permit(:name, :drummers, :guitars, :basses, :keyboards, :rappers, :singers, :producers, :image)
  end

  def find_collab
    @collab = Collab.find(params[:id])
  end
end
