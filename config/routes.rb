Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'pages/index'
  get 'pages/newmodal'
  get 'pages/newregistro'
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  resources :products, only: [:index] do
    resources :orders, only: [:create]
  end
  resources :orders, only: [:index, :destroy]do
    collection do
      delete 'empty_cart'
    end
  end
  root 'products#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
