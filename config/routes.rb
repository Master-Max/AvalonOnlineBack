Rails.application.routes.draw do

  post '/login', to: "sessions#create"

  resources :rooms, only:[:index] do
    resources :players
  end
  resources :players, only:[:create]

end
