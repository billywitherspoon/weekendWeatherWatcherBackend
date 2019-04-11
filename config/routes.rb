Rails.application.routes.draw do
  namespace :api do
      namespace :v1 do
          resources :users, :tags, :destinations, :forecasts
      end
  end
end