Rails.application.routes.draw do
  root to: 'things#index'
  resources :things do
    post :update_row_order, on: :collection
  end
end
