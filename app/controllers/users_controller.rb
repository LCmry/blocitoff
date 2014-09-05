class UsersController < ApplicationController

  def show
    @user = current_user
    @todo = Todo.new
    @todos = @user.todos
  end
end