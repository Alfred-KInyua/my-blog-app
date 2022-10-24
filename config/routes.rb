# frozen_string_literal: true

Rails.application.routes.draw do
  get 'users', to:'users#index'
  get 'users/:user_id', to:'users#show'
  # get /users to controler to action 
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
