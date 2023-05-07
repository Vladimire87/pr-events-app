# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  # get 'events/index'
  # get 'events/new'
  # get 'events/show'
  # get 'events/create'
  # get 'events/edit'
  # get 'events/update'
  # get 'events/destroy'
  resources :events
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'events#index'
end
