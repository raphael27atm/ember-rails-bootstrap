Rails.application.routes.draw do
  resources :users
  resources :sessions, only: [:create]
  post 'token' => 'sessions#create'
  mount_ember_app :frontend, to: "/", controller: "application", action: "index"

end
