Rails.application.routes.draw do
  

  root 'static_pages#home'
  get '/help', to:'static_pages#help'
  get '/about', to:'static_pages#about'
  get '/contact', to:'static_pages#contact'
  get '/signup', to:'users#new'
  post '/signup', to:'users#create'
  get 'users/:id', to: 'users#show'
  
  get '/login', to: 'session#new'
  post '/login', to: 'session#create'
  post '/logout', to: 'session#destroy'
  
  
  resources :users
end
