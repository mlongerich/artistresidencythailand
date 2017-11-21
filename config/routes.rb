Rails.application.routes.draw do
  root to: 'petitions#index'

  get '/new-application', to: 'petitions#new'
  get '/admin', to: 'petitions#admin'

  resources :petitions
end
