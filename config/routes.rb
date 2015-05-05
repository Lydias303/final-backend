Rails.application.routes.draw do
  root 'lists#index'
  namespace :api do
    namespace :v1 do
      resources :lists, only: [:index, :show, :create, :destroy, :update]
        resources :todos, only: [:create, :update, :destroy]
      end
    end
  end
