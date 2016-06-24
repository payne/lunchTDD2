Rails.application.routes.draw do
  resources :lunch_events
  devise_for :users, :controllers => { registrations: 'registrations' }
  resources :groups, only: [ :new, :create, :show, :index ]
  root 'welcome#index'
  # From http://stackoverflow.com/questions/25858606/how-to-devise-destroy-session-and-sign-out-from-controller
  devise_scope :user do
    get '/signout', to: 'devise/sessions#destroy', as: :signout
  end
end
