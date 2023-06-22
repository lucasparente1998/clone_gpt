Rails.application.routes.draw do
  resources :home, only: [:create]
  root to: "home#index"
  get 'home/index'
  get 'home/create'
  devise_for :users


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
