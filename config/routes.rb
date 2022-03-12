Rails.application.routes.draw do
  resources :line_items
  resources :carts
  get 'gallery/index'
  get 'gallery/search'
  resources :stores
  get 'admin/login'
  devise_for :users
  post 'admin/login'
  get 'admin/logout'
  root 'welcome#index'
  get 'home/index'
  post 'gallery/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
