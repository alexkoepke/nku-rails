NkuRails::Application.routes.draw do
  resources :posts do
    resources :comments
  end
  
  resources :students
  resources :sessions
  resources :attendances
  
  get "sign_out", to: "sessions#destroy"
  post 'login', to: "sessions#create"

  root "welcome#index"
end
