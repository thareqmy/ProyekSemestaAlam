Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/signup', to: 'users#new'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy'
  delete 'logout', to: 'sessions#destroy'

  resources :users

  resources :buyers

  resources :vegetables

  resources :transactions

  get 'vegetables/:id/tambahjumlah', to: 'panens#tambahjumlah', as: 'tambahjumlah'
  post 'vegetables/:id/tambahjumlah', to: 'panens#create'

  root 'sessions#new'

end
