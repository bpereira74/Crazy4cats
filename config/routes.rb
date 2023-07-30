Rails.application.routes.draw do
  resources :publications
  
  devise_for :users
      root 'home#index'
  

  authenticated :user do
      root 'post#index', as: :authenticated_root
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  
  
end
