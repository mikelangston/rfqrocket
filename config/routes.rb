Rails.application.routes.draw do

  root 'pages#index'
  devise_for :users

  namespace :super_admin do
    get '/', to: 'dashboard#index'
    resources :users
    resources :roles, except: [:show]
  end

  resources :projects do
    resources :rfqs, except: [:index]
  end

end
