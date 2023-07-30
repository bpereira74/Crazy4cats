Rails.application.routes.draw do
  resources :comments
  resources :publications
  
  devise_for :users
      root 'home#index'
  

  authenticated :user do
      root 'post#index', as: :authenticated_root
  end

  post '/reactions', to: 'reactions#user_reaction', as: 'user_reaction'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  get '/my_reactions', to: 'reactions#product_with_reactions', as: 'my_reactions'
end


