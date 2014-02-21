NkuRails::Application.routes.draw do
  resources :posts do
    resources :comments
  end
  
  resources :students

  root "welcome#index"
end
