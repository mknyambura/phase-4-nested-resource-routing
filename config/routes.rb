Rails.application.routes.draw do
  resources :dog_houses do
    resources :reviews do
      resources :comments
    end
    # get '/dog_houses/:dog_house_id/reviews', to: 'dog_houses#reviews_index'
  end
  resources :reviews, only: [:show, :index, :create]
  # get '/dog_houses/:dog_house_id/reviews/:id', to: 'dog_houses#review'
end
