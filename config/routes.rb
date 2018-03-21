Rails.application.routes.draw do
  get 'comments/index'

  root 'pages#index'
  get 'pages/help'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  post '/favorites', to: 'favorites#create'
  post '/comments', to: 'comments#create'

  resources 'users'
  resources 'topics'
  resources 'comments'

  get '/favorites', to: 'favorites#create'
  get '/comments', to: 'comments#create'

end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
