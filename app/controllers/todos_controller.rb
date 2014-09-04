class TodosController < ApplicationController

  def new
    @todo = Todo.new
  end

  def create
    @todo = current_user.todos.build(todo_params)
    if @todo.save
      redirect_to :back, notice: 'Your new To-Do was saved'
    else
      redirect_to :back, notice: 'There was an error saving your To-Do'
    end
  end

  private

  def todo_params
    params.require(:todo).permit(:description)
  end
end