Fakebook::Application.routes.draw do
  resources :statuses

  match 'frontend' => 'frontend#index'
  match 'frontend/:template' => 'frontend#show'
  
  root to: 'statuses#index'
end
