Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
  authenticated :user do
    root :to => 'users#index', as: :authenticated_root
  end
  unauthenticated :user do
    root :to => 'devise/sessions#new', as: :unauthenticated_root
  end
end

  get '/test_types', to: 'tests_types#index' 
  
  get 'sessions/new'

  resources :users

  resources :test_results
  
  resources :protocols

  resources :test_types
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
