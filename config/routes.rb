Rails.application.routes.draw do
  devise_for :users
  resources :recipes, only: [:new, :create, :index, :show, :destroy, :put] do
    resources :recipe_foods, only: [:new, :create, :destroy, :edit, :update]
  end
  resources :foods, only: [:index, :new, :create, :destroy]
  get 'public_recipes', to: 'recipes#public_recipes'

  get 'shopping_list', to: 'shopping_list#index'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  match 'recipes/:recipe_id' => 'recipes#toggle_public', as: :toggle_public, via: :patch

  # Defines the root path route ("/")
  # root "articles#index"

  root to: "home#index"
end
