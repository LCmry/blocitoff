class TodosController < ApplicationController
  before_action :authenticate_user!

  def new
    @user = User.find(params[:user_id])
    @todo = Todo.new
    authorize @todo
  end

  def create
    @user = User.find(params[:user_id])
    @todo = current_user.todos.build(todo_params)
    authorize @todo
    if @todo.save
      redirect_to @user, notice: 'Your new To-Do was saved'
    else
      redirect_to @user, notice: 'There was an error saving your To-Do'
    end
  end

  def destroy
    @user = User.find(params[:user_id])
    @todo = Todo.find(params[:id])
    authorize @todo
    if @todo.destroy
      redirect_to @user, notice: 'Your To-Do was deleted'
    else
      redirect_to @user, notice: 'There was an error deleting your To-Do'
    end
  end

  private

  def todo_params
    params.require(:todo).permit(:description)
  end
end