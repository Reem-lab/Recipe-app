Rails.application.routes.draw do
  get 'recipe_foods/create'
  get 'recipe_foods/destroy'
  devise_for :users
  resources :recipes, only: [:index, :show, :destroy, :put] do
    resources :recipe_foods, only: [:create, :destroy]
  end
  resources :foods, only: [:index, :new, :create, :destroy]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  match 'recipes/:recipe_id' => 'recipes#toggle_public', as: :toggle_public, via: :patch

  # Defines the root path route ("/")
  # root "articles#index"

  root to: "home#index"
end
