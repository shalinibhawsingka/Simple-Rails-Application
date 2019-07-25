Rails.application.routes.draw do
  get "dogs/index"
  get "dogs/show"
  get "dogs/new"
  get "dogs/edit"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "home#index"
  get "home/firemail", to: "home#firemail"
  get "users", to: "users#index"
  get "users/index", to: "users#index"
  get "employees", to: "employees#index"
  get "employees/index", to: "employees#index"
  resources :posts
  resources :dogs
end
