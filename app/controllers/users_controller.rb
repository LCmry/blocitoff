class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @todos = @user.todos
  end
end