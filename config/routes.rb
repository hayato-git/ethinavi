Rails.application.routes.draw do

  root "shops#index"
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only:[:edit,:update]
  resources :shops do
    resources :comments
  end
  delete "/shops/:id" => "shops#destroy", as: "destroy_shop"
  get "home/about" => "home#about"
  get "home/top" => "home#top"
  get "home/terms" => "home#terms"
  get "home/privacy" => "home#privacy"

end
