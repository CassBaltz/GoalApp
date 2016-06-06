Rails.application.routes.draw do

  resources :users, only: [:new, :create, :show] do
    resources :user_comments, only: :create
    resources :goals, only: [:show]
  end
  resources :goals, except: [:show] do
    resources :goal_comments, only: :create
  end
  resource :session, only: [:new, :create, :destroy]
end
