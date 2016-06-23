Rails.application.routes.draw do
  root 'welcome#index'
  resources :groups, only: [ :new, :create, :show, :index ]
end
