Rails.application.routes.draw do
  resources :events
  resources :user_groups
  get '/user_groups/group/:id', to: 'user_groups#group'
  resources :groups
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
