Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :budgets, only: [:index, :new, :create, :show]
  resources :expenses, only: [:create]
  resources :users, only: [:create, :show]
end
