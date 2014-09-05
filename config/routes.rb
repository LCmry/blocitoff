Rails.application.routes.draw do

  devise_for :users

  resources :users, only: [:show] do
    resources :todos, only: [:new, :create]
  end

  devise_scope :user do
    authenticated :user do
      root "users#show", as: :authenticated_root
    end

    unauthenticated do
      root "devise/registrations#new", as: :unauthenticated_root
    end
  end

end
