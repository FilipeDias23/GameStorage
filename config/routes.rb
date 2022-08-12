Rails.application.routes.draw do
  # root to: 'pages#home'

  resources :games do
    resources :bookings, only: [ :index, :show, :new, :create ]
  end
end
