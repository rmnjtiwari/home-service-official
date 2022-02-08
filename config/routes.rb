Rails.application.routes.draw do
  # resources :users, only: [:index]
  get '/users',to: 'users#index'
  get '/users/new',to: 'users#new'
  post '/users/new',to: 'users#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
