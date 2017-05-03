Rails.application.routes.draw do
  resources :posts
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root 'products#landing'
  devise_for :users, controllers: {
       sessions: 'users/sessions'
     }
  resources :users, only: [:show]
  resources :mailchimp, only: [:create]

  resources :products do
    resources :comments, except: [:index]
  end

  resources :builds, only: [:index] do
    member do
      put "upvote", to: "builds#upvote"
      put "downvote", to: "builds#downvote"
    end
    resources :comments, except: [:index]
  end

  resources :users do
    resources :builds
  end

  resources :comments do
    member do
      put "upvote", to: "comments#upvote"
      put "downvote", to: "comments#downvote"
    end
    resources :comments
  end
end
