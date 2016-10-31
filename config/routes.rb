Rails.application.routes.draw do
  get 'line_items/index'

  get 'line_items/show'

  get 'line_items/new'

  get 'line_items/edit'

  get 'line_items/create'

  get 'line_items/update'

  get 'line_items/destroy'

  get 'items/index'

  get 'items/show'

  get 'items/new'

  get 'items/edit'

  get 'items/create'

  get 'items/update'

  get 'items/destroy'

  get 'orders/index'

  get 'orders/show'

  get 'orders/new'

  get 'orders/edit'

  get 'orders/create'

  get 'orders/update'

  get 'orders/destroy'

  get 'users/index'

  get 'users/show'

  get 'users/new'

  get 'users/edit'

  get 'users/create'

  get 'users/update'

  get 'users/destroy'

  root :to => "user#index"
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
