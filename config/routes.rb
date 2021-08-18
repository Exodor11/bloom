Rails.application.routes.draw do
  devise_for :users
  
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users do
    resources :contacts
    resources :user_tags
  end

  resources :posts do
    resources :posts_saved
    resources :posts_updated
    resources :post_tags
  end
end
