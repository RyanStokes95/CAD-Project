Rails.application.routes.draw do
  resources :exercises
  devise_for :users

  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root "exercises#index"
end

