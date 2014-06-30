Rails.application.routes.draw do
  resources :manufacturers, only: [:index, :show, :new, :create] do
    resources :cars, only: [:index, :show, :new, :create]
  end

  root 'manufacturers#index'
end
