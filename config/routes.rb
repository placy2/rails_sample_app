Rails.application.routes.draw do
  root 'static_pages#home'
  resources :users
  #change to [edit] if bugged
  resources :account_activations, only: :edit

  get  '/help',    to: 'static_pages#help'
  get  '/about',   to: 'static_pages#about'
  get  '/contact', to: 'static_pages#contact'
  get  '/signup',  to: 'users#new'

  get    '/login',  to: 'sessions#new'
  post   '/login',  to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  post '/signup',  to: 'users#create'
end
