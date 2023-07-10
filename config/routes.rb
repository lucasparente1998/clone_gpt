Rails.application.routes.draw do
  resources :home, only: [:create]
  root to: "home#index"
  authenticate :users do
    get 'home/create'
  end
  get 'home/show', as: 'home_show'

  devise_for :users, controllers: { confirmations: 'users/confirmations' }


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
