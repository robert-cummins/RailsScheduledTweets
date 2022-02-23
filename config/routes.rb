Rails.application.routes.draw do
  #GET /about and use the about controller with index action
  get "about", to: "about#index"

  root to: "main#index"
end
