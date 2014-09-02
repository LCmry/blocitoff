class TodosController < ApplicationController

  def show
  end

  def new
  end

  def create
    @todo = Todo.new(todo_params)
    @todo.save
    redirect_to @todo, notice: 'Your new TODO was saved'
  end

  private

  def todo_params
    params.require(:todo).permit(:description)
  end
end