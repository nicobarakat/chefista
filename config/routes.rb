Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :chefs do
<<<<<<< HEAD
    resources :bookings
  end
=======
    resources :bookings, only: [:create]
  end
  resources :bookings, only: [:index, :edit, :update, :destroy]
>>>>>>> b3f9d74269837bfb500a5069de90a3f1baec77b1
end
