Fakebook::Application.routes.draw do
  resources :statuses

  root to: 'home#index'
end
