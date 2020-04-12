Rails.application.routes.draw do

  root 'homes#top'
  get 'homes/about' => 'homes#about'

  devise_for :users

  resources :users, only: [:show, :edit, :update]
  resources :invites

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
