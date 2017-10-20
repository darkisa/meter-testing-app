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
  
  get 'sessions/new'

  resources :users, :test_results, :protocols, :test_types

  resources :tasks
  get 'my_tasks', to: 'tasks#my_tasks'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
