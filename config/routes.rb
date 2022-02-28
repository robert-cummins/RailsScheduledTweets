Rails.application.routes.draw do
  get 'password_reset/new'
  get 'password_reset/create'
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

  root to: "main#index"
end
