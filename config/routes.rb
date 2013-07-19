require 'api_constraints'

Taplist::Application.routes.draw do
  
  namespace :api, defaults: {format: 'json'} do
    scope module: :v1, constraints: ApiConstraints.new(version: 1, default: true) do
      resources :brews
      resources :pubs
    end
    scope module: :v2, constraints: ApiConstraints.new(version: 2) do
      resources :brews
    end
  end
  
  
  resources :companies
  resources :pubs 

  get "home/index"
  root :to => 'home#index'

end
