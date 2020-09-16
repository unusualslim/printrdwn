Rails.application.routes.draw do
  

  root :to => "pages#index"

  get "pages/:page" => "pages#show"   
  devise_for :users, controllers: {
        registrations: 'users/registrations'
      }

  devise_scope :user do 
    root to: 'pages#index'
    match '/sessions/user', to: 'devise/sessions#create', via: :post
  end

  resources :admin, only: [:index] 
  resources :assets, only: [:index, :show]
  resources :tags
  resources :sessions
#  resources :teams do
#    resources :team_members
#  end
  resources :user
  resources :things
  resources :notes
  resources :severities
  resources :statuses  
  resources :contacts
#  resources :team_members, only: [:index, :update, :show, :destroy]

  resources :assets do
    resources :taggings
  end

  resources :locations do
    resources :assets
  end
    
  namespace :admin do
    resources :manufacturers, :equipment
  end

  resources :task_lists do
    resources :tasks
  end

  resources :tasks do 
    resources :task_comments
  end

  resources :cases do
    resources :case_comments
  end

  post "change_filename", to: "things#change_filename", as: "change_filename"
#  post "set_current_team", to: "teams#set_current_team", as: 'set_current_team' 

end
