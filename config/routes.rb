Rails.application.routes.draw do
  
  root "tracks#index"

  get "pages/about"
  
  resources :tracks

  resources :users, only: %i[new create]
  resource :session, only: %i[new create destroy]
  
end
