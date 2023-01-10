Rails.application.routes.draw do

  root "details#index"
  # get "details", to:"articles#index"
  # get "/details/:id", to:"details#show"
  resources :details
end
