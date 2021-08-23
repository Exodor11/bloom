Rails.application.routes.draw do
  devise_for :users
  
  root to: 'posts#index'
  get "search", to: "pages#search"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users do
    resources :contacts
    resources :user_tags
    resources :contacts

    post "follow", to: "users#follow"
    delete "unfollow", to: "users#unfollow"

    get "followers", to: "users#followers"
    get "followings", to: "users#followings"

    get "savedposts", to: "posts#savedposts"

    get "ownposts", to: "posts#ownposts"

  end

  resources :posts do
    resources :posts_saved
    resources :posts_upvoted
    resources :post_tags

    post "save", to: "posts#save"
    delete "unsave", to: "posts#unsave"

    post "upvote", to: "posts#upvote"
    delete "unvote", to: "posts#unvote"

    get "upvotes", to: "posts#upvotes"
  end

  get "dailyinsights", to: "posts#dailyinsights"

end
