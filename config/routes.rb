Rails.application.routes.draw do
 resources :items
 resources :orders
 resources :line_items
  root :to => "home#index"
  devise_for :users
  match '/users',   to: 'users#index',   via: 'get'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
