# frozen_string_literal: true

Rails.application.routes.draw do
  get 'welcome/index'
  root 'welcome#index'

  resources :adresses
  resources :roles
  resources :paying_methods
  resources :orders
  resources :sauces
  resources :veggies
  resources :mains
  resources :breads
  resources :hoagies
  resources :ingredients
  resources :users
  resources :user1s
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
