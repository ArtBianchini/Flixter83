Rails.application.routes.draw do
  devise_for :users
  root 'static_pages#index'
  resources :courses, only: [:index, :show]
  namespace :instructor do
  	resources :sections, only: []
  		resources :lessons, only: [:new, :create]
  	end 
    resources :courses, only: [:new, :create, :show] do 
    	resources :sections, only: [:new, :create] do 	
    	end
    end 
  end
end