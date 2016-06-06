Rails.application.routes.draw do
  resources :users, only: [:new, :create, :show] do
    resources :goals, only: [:show]
  end
  resources :goals, except: [:show]
  resource :session, only: [:new, :create, :destroy]
end
