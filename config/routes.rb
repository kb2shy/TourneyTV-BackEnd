Rails.application.routes.draw do
  resources :teams
  resources :games
  resources :players
  post '/login', to: 'auth#create'
  get '/profile', to: 'players#profile'
  mount ActionCable.server => '/cable'
end
