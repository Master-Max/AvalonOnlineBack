Rails.application.routes.draw do
  resources :rooms, only:[:index] do
    resources :players
  end
  resources :players, only:[:create]

  resources :games, only:[:create]
end
