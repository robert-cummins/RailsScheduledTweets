Rails.application.routes.draw do
  
  #GET /about and use the about controller with index action
  get "about", to: "about#index"
                                        # edit rails default path name "password" to edit_password
  get "password", to: "password#edit", as: :edit_password
  patch "password", to: "password#update"

  get "sign_up", to: "registration#new"
  post "sign_up", to: "registration#create"

  get "sign_in", to: "sessions#new"
  post "sign_in", to: "sessions#create"
  
  delete "logout", to: "sessions#destroy"

  get 'password/reset', to: "password_reset#new"
  post 'password/reset', to: "password_reset#create"
  get 'password/reset/edit', to: "password_reset#edit"
  patch 'password/reset/edit', to: "password_reset#update"

  get "/auth/twitter/callback", to: "omniauth_callbacks#twitter"

  resources :twitter_accounts

  root to: "main#index"
end
