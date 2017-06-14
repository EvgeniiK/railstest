Rails.application.routes.draw do
  resources :positions
  resources :schedules
  resources :stations
  resources :wagons
  resources :trains
  resources :staffs
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
