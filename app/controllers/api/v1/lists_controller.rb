class Api::V1::ListsController < ApplicationController
  # skip_before_filter  :verify_authenticity_token

  def index
    @lists = List.all
    render json: @lists, each_serializer: ListSerializer
  end


  def create
    @list = List.create(list_params)
    render json: @list
  end

  def update
    @list = List.find(params[:id])
    @list.update_attributes(list_params)

    render json: @list
  end

  def destroy
    @list = List.find(params[:id])
    render json: @list.destroy
  end

  def show
    @list = List.find(params[:id])
    render json: @list
  end

  private

  def list_params
    params.require(:list).permit(:title)
  end
end
