Rails.application.routes.draw do
  root 'sessions#index'
  resources :sessions
  resources :characters
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
