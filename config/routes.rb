Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :characters, except: [ :new, :edit ]
      resources :movie_series, except: [ :new, :edit ] do
        resources :character_by_movies, only: [ :create, :update ]
      end
    end
  end
end
