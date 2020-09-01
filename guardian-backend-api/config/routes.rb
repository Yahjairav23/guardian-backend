Rails.application.routes.draw do
  resources :user_events, only: [:index, :create]
  resources :events, only: [:index]
  resources :user_groups, only: [:index, :show, :create, :destroy]
  resources :groups, only: [:index, :create]

  
  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :create]
      post '/sign-up', to: 'users#create'
      post '/login', to: 'auth#create'
      get '/decode_token', to: 'users#parseToken'
    end
  end
end
