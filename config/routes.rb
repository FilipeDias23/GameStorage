Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :games do
    resources :bookings, only: [ :index, :show, :new, :create ]
  end
end
