Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/authors', to: 'authors#index'
  get 'authors/new', to: 'authors#new'
  post '/authors', to: 'authors#create'
  get 'authors/:id', to 'authors#show', as: 'author'
  get 'authors/:id/edit', to: 'authors#edit'
  patch '/authors', to: 'authors#update'
end
