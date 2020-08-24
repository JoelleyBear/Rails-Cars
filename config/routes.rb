Rails.application.routes.draw do
  resources :vehicles
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "index", to: "vehicles#index"
  get "show", to: "vehicles#show"
  post "create", to: "vehicless#create"
  post "update", to: "vehicles#update"
  post "destroy", to: "vehicles#destroy"
end
