Rails.application.routes.draw do
  get 'home/about'
  get 'users/edit'
  get 'comments/new'
  get 'genres/index'
  get 'genres/new'
  get 'genres/show'
  get 'genres/edit'
  get 'shops/index'
  get 'shops/new'
  get 'shops/show'
  get 'shops/edit'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
