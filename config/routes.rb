Rails.application.routes.draw do
  devise_for :users
  
  root to: 'pages#home'
  get "/search", to: "pages#search"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users do
    resources :contacts
    resources :user_tags
    resources :contacts
  end

  resources :posts do
    resources :posts_saved
    resources :posts_upvoted
    resources :post_tags
  end
end
