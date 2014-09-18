class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = User.find(params[:id])
    @todo = Todo.new
    @todos = @user.todos
    authorize @user
  end
end