class Api::V1::TodosController < ApplicationController

  def create
    todo = List.find(params[:todo][:list]).todos.create(title: params[:title])
    render json: { todo: todo, status: 201}
  end

  def destroy
    @todo = Todo.find(params[:id])
    render json: @todo.destroy

  end
end
