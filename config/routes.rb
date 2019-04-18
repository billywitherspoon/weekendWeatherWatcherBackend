Rails.application.routes.draw do
  namespace :api do
      namespace :v1 do
          resources :users, :tags, :destinations, :forecasts, :favorites
          get '/users/username/:username', to: 'users#username'
          get '/favorites/user/:user_id', to: 'favorites#user_favorites'
      end
  end
end
