Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "home#index"
  get "home/firemail", to: "home#firemail"
  get "users", to: "users#index"
  get "employees", to: "employees#index"
  resources :posts, only: [:index, :new, :create, :destroy]
  resources :dogs
end
