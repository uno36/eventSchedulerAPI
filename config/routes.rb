Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'sessions',
    registrations: 'registrations'
  }
  
  namespace :api do
    namespace :v1, defaults: { format: 'json' } do
      resources :users
    end
  end
end
