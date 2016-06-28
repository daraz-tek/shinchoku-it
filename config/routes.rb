Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'defaults#index'

  get 'auth/:provider/callback', to: 'sessions#create'
  delete 'auth', to: 'sessions#destroy'

  namespace :feeds do
    resources :search, only: :index
  end
  resources :feeds, only: :index

  namespace :reports do
    resources :drafts, only: :index
    resources :publications, only: :index
  end
  resources :reports
end
