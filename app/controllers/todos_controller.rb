class TodosController < ApplicationController

  def show
    @todo = Todo.find(params[:id])
  end

  def new
    @todo = Todo.new
  end

  def create
    @todo = Todo.new(todo_params)
    @todo.save
    redirect_to @todo, notice: 'Your new To-Do was saved'
  end

  private

  def todo_params
    params.require(:todo).permit(:description)
  end
end