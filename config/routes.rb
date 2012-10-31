Fakebook::Application.routes.draw do
  resources :statuses, except: [:edit, :update]
  # or resources :statuses, only [:index, :show]

  match 'frontend' => 'frontend#index'
  match 'frontend/:template' => 'frontend#show'
  
  root to: 'statuses#index'
end
