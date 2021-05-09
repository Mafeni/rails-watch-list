Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'lists#index'
  resources :lists do
    resources :bookmarks, only: %i[new create]
    resources :reviews, only: %i[new create]
  end

  resources :movies, only: %i[show new create]
  get 'results', to: 'movies#results'
end
