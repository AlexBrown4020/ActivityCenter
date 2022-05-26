Rails.application.routes.draw do

  root to: "activities#index"

  get "/activities/1", to: "tictactoe#tictactoe"
  get "/activities/2", to: "hangman#hangman"
  post "/activities/2", to: "hangman#hangman"
  get "hangman/index"
  # post "activities/letter"

end
