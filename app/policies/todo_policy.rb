class TodoPolicy < ApplicationPolicy
  attr_reader :user, :todo

  def initialize(user, todo)
    @user = user
    @todo = todo
  end

  def new?
    true
  end

  def create?
    user.id == todo.user_id
  end

  def destroy?
    new?
  end
end