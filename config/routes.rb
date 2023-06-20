Rails.application.routes.draw do
  get 'question/index'
  devise_for :users
  get 'home/index'
  get 'clientes/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
