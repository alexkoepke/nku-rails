NkuRails::Application.routes.draw do
  resources :posts do
    resources :comments
  end
  
  resources :students, except: :edit

  root "welcome#index"
end
