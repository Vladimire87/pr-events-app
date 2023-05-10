# frozen_string_literal: true

Rails.application.routes.draw do
  get 'attendances/index'
  get 'attendances/show'
  devise_for :users
  # get 'events/index'
  # get 'events/new'
  # get 'events/show'
  # get 'events/create'
  # get 'events/edit'
  # get 'events/update'
  # get 'events/destroy'
  resources :events
  resources :attendances, only: [:create]

  root 'events#index'
end
