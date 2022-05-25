Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to: "activities#index"
  get "/activities", to: "activities#index"
  get "/activities/:id", to: "activities#show"
  # Defines the root path route ("/")
  # root "articles#index"
end
