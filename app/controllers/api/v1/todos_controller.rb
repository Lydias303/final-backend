class Api::V1::TodosController < ApplicationController

  def create
    todo = List.find(params[:id]).todos.create(title: params[:title])
  end

  def destroy
    @todo = Todo.find(params[:id])
    @todo.destroy
    redirect_to root_path
  end
end
