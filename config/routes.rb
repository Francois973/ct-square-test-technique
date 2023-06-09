Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :ip_informations, only: :index
    end
    namespace :v2 do
      resources :ip_informations, only: :index
    end
  end
end
