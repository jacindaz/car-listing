Rails.application.routes.draw do
  resources :manufacturers, only: [:index, :show, :new, :create] do
    resources :cars, only: [:new, :create]
  end

  resources :cars, only: [:index, :show]

  root 'manufacturers#index'
end
