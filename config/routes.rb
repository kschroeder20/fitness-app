# frozen_string_literal: true
Rails.application.routes.draw do
  devise_for :users, :controllers => { :registrations => "user/registrations" }
  resources :exercise_workouts, only: %i[create destroy edit new]
  resources :user_workouts, only: %i[create destroy edit new]
  resources :workouts
  resources :exercises

  root 'welcome#index'
  get 'my_profile', to: 'users#my_profile'
  get 'show_clients', to: 'users#show_clients'
  get 'show_client_workouts', to: 'users#show_client_workouts'
  delete 'remove_client', to: 'users#remove_client'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
