Rails.application.routes.draw do
  root "buildings#index"
  resources :buildings
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
