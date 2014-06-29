Rails.application.routes.draw do
  resources :cars, only: [:index, :show, :new, :create]
  resources :manufacturers, only: [:index, :show, :new, :create]

  root 'cars#index'
end
