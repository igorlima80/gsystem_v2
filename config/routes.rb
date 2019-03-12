Rails.application.routes.draw do
  resources :legal_customers
  resources :physical_customers
  resources :deliverers
  resources :type_deliverers
  resources :deliverer_statuses
  resources :vehicles
  resources :estabilishments
  resources :products
  resources :ncms
  resources :collaborators
  resources :supplier_legals
  resources :supplier_physicals
  resources :sexes
  resources :payment_tests
  resources :menu_items


  resources :cities
  resources :states

  devise_for :users, path: "u"
  resources :users

  # token auth routes available at /api/v1/auth
  namespace :api do
    mount_devise_token_auth_for 'User', at: 'auth'
    post 'cities/find'
    resources :users, only: [:create, :show]
  end

  devise_scope :user do
    authenticated :user do
      root to: 'home#index'
    end

    unauthenticated do
      root to: 'devise/sessions#new'
    end
  end

  post 'utils/zipcode'
end
