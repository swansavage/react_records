Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/records', to: 'records#index'
  get '/records/:id', to: 'records#show'
  post '/records', to: 'records#create'
  delete '/records/:id', to: 'records#delete'
  put '/records/:id', to: 'records#update'
end
