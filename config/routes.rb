Rails.application.routes.draw do
  root 'pages#index'
  get 'pages/help'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  post '/favorites', to: 'favorites#create'

  resources 'users'
  resources 'topics'

  get '/favorites', to: 'favorites#create'
  post '/comments', to: 'comments#create'
end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
