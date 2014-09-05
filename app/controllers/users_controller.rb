class UsersController < ApplicationController
  
  def show
    if params[:id]
      @user = User.find(params[:id])
    else
      @user = current_user
    end

    @todo = Todo.new
    @todos = @user.todos
  end
end