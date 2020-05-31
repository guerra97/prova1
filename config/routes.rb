Rails.application.routes.draw do
  resources :utenti
  resources :linea_ordini
  root 'vetrina#index', as: 'vetrina_index'
  resources :carrelli
  resources :prodotti
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
