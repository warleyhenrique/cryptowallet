Rails.application.routes.draw do
  resources :mining_types
  # Welcome routes
  get 'welcome/index'
  get 'welcome', to: 'welcome#index'
  
  resources :coins
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  #Root route
  root to: 'welcome#index'
end
