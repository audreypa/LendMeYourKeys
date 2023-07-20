Rails.application.routes.draw do
  resources :bookings, only: [:index] do
    get 'total_price', on: :collection
  end
  resources :cars do
    resources :bookings, only: %i[create]
  end
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
