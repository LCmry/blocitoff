class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = current_user
    @todo = Todo.new
    @todos = @user.todos
    unless @user == User.find(params[:id])
      redirect_to @user, alert: "That is not your page"
    end
  end
end