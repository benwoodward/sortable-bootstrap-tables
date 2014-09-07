Rails.application.routes.draw do
  root to: 'things#index'
  resources :things
end
