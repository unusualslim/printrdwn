Rails.application.routes.draw do
  
  root :to => "pages#index"
 
  
  devise_for :user

  devise_scope :user do 
    root to: 'pages#index'
    match '/sessions/user', to: 'devise/sessions#create', via: :post
  end

  resources :admin, only: [:index] 
  resources :assets, only: [:index, :show]
  resources :tags
  resources :sessions
  resources :teams
  resources :user
  resources :things
  resources :pages, only: [:index]
  resources :notes
  resources :severities
  resources :statuses  

  resources :assets do
    resources :taggings
  end

  resources :locations do
    resources :assets
  end
    
  namespace :admin do
    resources :manufacturers, :equipment
  end
 
  resources :support_cases do 
    resources :comments
  end
  
end
