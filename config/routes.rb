Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

    # see all the restaurants  - (read)
  get '/restaurants', to: 'restaurants#index'

  get '/restaurants/new', to: 'restaurants#new', as: :new_restaurant
  post '/restaurants', to: 'restaurants#create'
  # see show page for one restaurant (read)
  get '/restaurants/:id', to: 'restaurants#show', as: :restaurant

  resources :restaurants, only: [:index, :show, :new, :create] do
    resources :reviews, only: [:index, :new, :create]
    # collection do
    #   get 'restaurants/:id/reviews/new', to: 'reviews#new', as: :new_restaurant_review
    # end
  end
end
