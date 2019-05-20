Rails.application.routes.draw do
  resources :teams
  resources :games
  resources :players
  mount ActionCable.server => '/cable'
end
