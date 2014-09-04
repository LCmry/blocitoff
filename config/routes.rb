Rails.application.routes.draw do

devise_for :users

resources :users, only: [:show] do
  resources :todos, only: [:new, :create]
end

root to: "todos#new"
end
