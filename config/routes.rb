Rails.application.routes.draw do
  resources :ip_informations, only: :index
end
