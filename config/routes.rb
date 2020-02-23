Rails.application.routes.draw do
  
  get '/room/:id', to: 'room#show', as: 'show_room'
  root "buildings#index"
  resources :buildings
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
