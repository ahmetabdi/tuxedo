Rails.application.routes.draw do
  root to: 'pages#home'

  resources :contracts
  resources :items
end
