Rails.application.routes.draw do
  root 'pages#index'
  devise_for :users

  namespace :super_admin do
    resources :users
    resources :roles, except: [:show]
  end

end
