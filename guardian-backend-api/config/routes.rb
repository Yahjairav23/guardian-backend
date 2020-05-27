Rails.application.routes.draw do
  resources :user_events
  resources :events
  resources :user_groups
  resources :groups
  # resources :users
#User Auth
  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :create]
      post '/sign-up', to: 'users#create'
      post '/login', to: 'auth#create'
      # get '/profile', to: 'users#profile'
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
