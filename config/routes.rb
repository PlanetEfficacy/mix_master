Rails.application.routes.draw do

  resources :artists do
    resources :songs, only: [:new, :create, :index, :destroy]
  end

  resources :songs, only: [:show, :update, :edit, :index, :destroy]

  resources :playlists, only: [:index, :new, :create, :show, :edit, :update]
end
