Rails.application.routes.draw do
  resources :users
  resources :courses
  resources :instructors
  resources :subjects
  root 'sessions#new'
  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  get '/search', to: 'search#index'
  get 'search/:query', to: 'search#results'

end
