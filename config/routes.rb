Rails.application.routes.draw do
  get '/welcome' => 'welcome#index'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  get '/register' => 'accounts#new'
  post '/register' => 'accounts#create'

  resources :travels

  root 'welcome#index'
end
