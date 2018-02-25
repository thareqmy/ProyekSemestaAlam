Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :buyers

  resources :vegetables

  get 'vegetables/:id/tambahjumlah', to: 'panens#tambahjumlah', as: 'tambahjumlah'
  post 'vegetables/:id/tambahjumlah', to: 'panens#create'

end
