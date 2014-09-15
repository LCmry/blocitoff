class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = current_user
    @todo = Todo.new
    @todos = @user.todos   
  end
end