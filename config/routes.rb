Rails.application.routes.draw do
  resources :campaigns, only: [:index] do
    resources :candidates, only: [:index]
  end
  root to: 'campaigns#index'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
