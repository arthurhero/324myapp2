Rails.application.routes.draw do
  get 'welcome/index'
  get 'welcome/about'
  get '/stories', to: 'stories#index'
  post '/stories', to: 'stories#create'
  delete '/stories/:id', to: 'stories#delete'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'
end
