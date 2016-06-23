Rails.application.routes.draw do
  devise_for :users
  resources :groups, only: [ :new, :create, :show, :index ]
  root 'welcome#index'
  # From http://stackoverflow.com/questions/25858606/how-to-devise-destroy-session-and-sign-out-from-controller
  devise_scope :user do
    get '/signout', to: 'devise/sessions#destroy', as: :signout
  end
end
