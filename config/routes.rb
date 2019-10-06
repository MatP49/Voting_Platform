Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get 'records/listen'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :items
  resources :items do 
  member do
    put "like", to: "items#upvote"
    put "dislike", to: "items#downvote"
  end
end
end
