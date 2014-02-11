NkuRails::Application.routes.draw do
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  
  resources :posts do
    resources :comments
  end

  resources :students
  resources :sessions

  root to: "students#index"
end