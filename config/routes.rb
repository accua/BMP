Rails.application.routes.draw do
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
    resources :comments, except: [:index]
  end

  resources :users do
    resources :builds
  end

  resources :comments do
    resources :comments
  end
end
