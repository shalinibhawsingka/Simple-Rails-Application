Rails.application.routes.draw do
  get 'dogs/index'
  get 'dogs/show'
  get 'dogs/new'
  get 'dogs/edit'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "home#index"
  get 'home/firemail' => 'home#firemail'
  get 'users' => 'users#index'
  get 'users/index' => 'users#index'
  get 'employees' => 'employees#index'
  get 'employees/index' => 'employees#index'
  resources :posts
  resources :dogs
end
