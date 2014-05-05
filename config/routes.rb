NkuRails::Application.routes.draw do
  get 'login', to: 'sessions#new', as: 'login'
  post 'login', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  
  resources :posts do
    resources :comments
  end
  
  resources :students
  resources :sessions
  resources :attendances
  
  get "sign_out", to: "sessions#destroy"
  post 'login', to: "sessions#create"

  resources :students
  resources :sessions
  resources :attendances

  root to: "students#index"
end
