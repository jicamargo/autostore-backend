Rails.application.routes.draw do
  # Definir la raíz de la API, para evitar errores en production
  root to: proc { [200, {}, ['API is up and running']] }

  namespace :api do
    namespace :v1 do
      resources :productos
      post '/signup', to: 'users#create'
      post '/login', to: 'users#login'
      get '/users', to: 'users#index'
    end
  end

  # para manejar las solicitudes options de CORS
  match '*path', to: 'application#options', via: :options

  # Ruta catch-all para menejar errores 404
  match '*unmatched', to: 'errors#not_found', via: :all
end
