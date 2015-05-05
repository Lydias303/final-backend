Rails.application.routes.draw do
  namespace :Api do
    namespace :V1 do
      resources :lists, only: [:index, :show, :create, :destroy, :update]
        resources :todos, only: [:create, :update, :destroy]
      end
    end
  end
