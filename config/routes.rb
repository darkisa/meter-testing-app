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

  resources :users, 
            :test_results, 
            :protocols, 
            :test_types, 
            :tasks,
            :meter_protocol_relationships

  get 'my_tasks', to: 'tasks#my_tasks'
  get 'reports', to: 'reports#report'
  get 'sessions/new'

end
