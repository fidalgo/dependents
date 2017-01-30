Rails.application.routes.draw do
  resources :variant_fields
  resources :properties
  resources :fields
  resources :variants
  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
