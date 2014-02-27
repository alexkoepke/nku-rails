NkuRails::Application.routes.draw do
  resources :posts do
    resources :comments
  end
  
  resources :students
  resources :sessions
  
  get "sign_out", to: "sessions#destroy"

  root "welcome#index"
end
