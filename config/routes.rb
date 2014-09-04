Rails.application.routes.draw do

  devise_for :users
resources :todos, only: [:new, :create, :show]

root to: "todos#new"
end
