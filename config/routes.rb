Rails.application.routes.draw do
  root 'pages#index'
  get 'pages/help'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  post '/favorites', to: 'favorites#create'
  get '/new', to: 'comments#new'
  post '/comments', to: 'comments#create'
  get 'comments/index', to: 'comments#index'

  resources 'users'
  resources 'topics'

  get '/favorites', to: 'favorites#create'

end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
