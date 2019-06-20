Rails.application.routes.draw do
    root "shops#index"
    devise_for :users
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    resources :users, only:[:edit,:update]
    resources :shops do
      resource :comments
    end
    delete "/shops/:id" => "shops#destroy", as: "destroy_shop"
    get "home/about" => "home#about"
    get "home/top" => "home#top"
end
