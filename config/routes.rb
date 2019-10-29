Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'products/index'
  resources :products, only: [:index, :show] do
    resources :orders, only: :create
  end
  
  resources :products
  devise_for :users
  resources :users
  resources :orders, only: [:index, :destroy] do
  	collection do
  		get 'clean'
  	end
  end
  resources :billings, only: [] do
    collection do
      get 'pre_pay'
      get 'execute'
    end
   end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'products#index'
end
