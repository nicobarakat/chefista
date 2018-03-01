Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :chefs do
    resources :bookings, only: [:create, :show]
  end
  resources :bookings, only: [:index, :edit, :update, :destroy]

  get "/dashboard", to: "pages#dashboard"
end
