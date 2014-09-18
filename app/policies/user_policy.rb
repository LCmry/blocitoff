class UserPolicy < ApplicationPolicy
  attr_reader :user, :usr

  def initialize(user, usr)
    @user = user
    @usr = usr
  end

  def show?
    user == usr
  end
end