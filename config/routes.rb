Rails.application.routes.draw do
  root to: 'pages#home'

  resources :contracts, except: [:show]
  resources :items, except: [:show]
end
