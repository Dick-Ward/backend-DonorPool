Rails.application.routes.draw do
  resources :supports
  resources :charities
  resources :transactions
  resources :cards
  resources :addresses
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
