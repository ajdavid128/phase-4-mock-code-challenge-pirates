Rails.application.routes.draw do

  resources :treasures, only: [:create]
  resources :islands, only: [:index]
  resources :pirates, only: [:index, :show, :destroy]

end
