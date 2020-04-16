Rails.application.routes.draw do

  root 'homes#top'
  get 'homes/about' => 'homes#about'

  devise_for :users

  resources :users, only: [:show, :edit, :update]

  resources :invites do
  	resource :invite_comments, only: [:create]
    resource :marks, only: [:create, :destroy]
  end

  resources :posts do
  	resource :post_comments, only: [:create]
    resource :favorites, only: [:create, :destroy]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
