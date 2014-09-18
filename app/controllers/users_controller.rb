class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    #if params[:id] != current_user.id
    #  redirect_to user_path(current_user) && return
    #end
    @user = User.find(params[:id])
    #redirect_to(user_path(@user), :notice => 'User not found') unless @user
    @todo = Todo.new
    @todos = @user.todos
    authorize @user
  end
end