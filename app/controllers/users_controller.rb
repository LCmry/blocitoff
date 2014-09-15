class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = User.find(params[:id])
    @todo = Todo.new
    @todos = @user.todos
    unless @user == current_user
      redirect_to user_path(current_user), alert: "That is not the page you are looking for"
    end
  end
end