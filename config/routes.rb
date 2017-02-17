Rails.application.routes.draw do
  root 'products#index'
  devise_for :users, controllers: {
       sessions: 'users/sessions'
     }
  resources :users, only: [:show]
  resources :products do
    resources :comments, except: [:index]
  end
end
