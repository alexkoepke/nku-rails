NkuRails::Application.routes.draw do
  get 'login', to: 'sessions#new', as: 'login'
  post 'login', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  
  resources :posts do
    resources :comments
  end

  resources :students
  resources :sessions

  root to: "students#index"
end