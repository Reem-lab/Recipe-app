Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root to: "home#index"

  get 'foods', to: "foods#index"
  get 'foods/new', to: "foods#new"
  post 'foods', to: "foods#create"
  delete 'foods/:id', to: "foods#destroy"

  # resource :foods, only: [:index, :new, :create, :destroy]
end
