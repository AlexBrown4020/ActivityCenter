Rails.application.routes.draw do

  root to: "activities#index"
  get "/activities", to: "activities#index"
  get "/activities/:id", to: "activities#show"

end
