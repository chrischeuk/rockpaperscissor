Rails.application.routes.draw do
  get 'rock_paper_scissors/index'

  root "games#index"

  resources :secret_numbers, :only => [:new, :show]
  resources :rock_paper_scissors, :only => [:new, :show]

  get '/games', to: 'games#index'
  get '/secret_numbers', to: 'secret_numbers#new'
  get '/rock_paper_scissors', to: 'rock_paper_scissors#index'
end
