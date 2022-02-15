Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users
  resources :sign_up, only: [:index]

  get "/sign_in", to: "sign_in#index"  
  get "/", to: "main#index"

end
