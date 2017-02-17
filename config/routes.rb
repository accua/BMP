Rails.application.routes.draw do
  root 'landing#index'
  devise_for :users, controllers: {
       sessions: 'users/sessions'
     }
  resources :users, only: [:show]
end
