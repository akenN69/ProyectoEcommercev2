Rails.application.routes.draw do
  get 'products/index'
  resources :products, only: [:index, :show, :new] do
    resources :orders, only: :create
  end
  resources :orders, only: [:index]
  resources :products
  devise_for :users
  resources :users
  resources :billings, only: [] do
    collection do
      get 'pre_pay'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'products#index'
end
