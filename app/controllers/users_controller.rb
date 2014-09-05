class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @todo = Todo.new
    @todos = @user.todos
  end
end