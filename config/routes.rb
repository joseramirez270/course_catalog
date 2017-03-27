Rails.application.routes.draw do
  resources :users
  resources :courses
  resources :subjects
  resources :instructors

  root 'sessions#new'
  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'
  post '/enroll', to: 'users#enroll'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  get '/search', to: 'search#index'
  get 'search/:query', to: 'search#results'

end
