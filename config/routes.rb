Rails.application.routes.draw do

  devise_for :users

  devise_scope :user do
    authenticated :user do
      root "users#show", as: :authenticated_root
    end

    unauthenticated do
      root "welcome#index", as: :unauthenticated_root
    end
  end

  resources :users, only: [:show] do
    resources :todos, only: [:new, :create, :destroy]
  end

end
