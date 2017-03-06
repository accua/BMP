Rails.application.routes.draw do
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
end
