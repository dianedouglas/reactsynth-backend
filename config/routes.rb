Rails.application.routes.draw do
  resources :presets
  namespace :api do
  	resources :presets
    resources :todos do
      member do
        patch 'update_completed'
      end
    end
  end
end
