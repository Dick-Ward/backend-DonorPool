Rails.application.routes.draw do
  resources :charities
  resources :favorites
  resources :transactions
  resources :cards
  resources :addresses
  resources :donors
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
