Rails.application.routes.draw do
  scope :api, defaults: { format: "json" } do
    scope :v1 do
      resources :hechos
      resources :personas
      resources :condicions
      resources :parentescos
      resources :escolaridads
      resources :estadocivils
      resources :etnia
      resources :generos
      resources :armas
      resources :sitios
      resources :localidads
      resources :delitos
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
