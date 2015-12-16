Rails.application.routes.draw do
  resources :campers, only: [:index]
  resources :campsites, only: [:index]
  resources :supplies, only: [:index]

  resources :campsites, only: [:show] do
    resources :campers, only: [:index]
  end

  resources :campers, only: [:show] do
    resources :supplies, only: [:index]
  end

end
