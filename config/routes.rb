Rails.application.routes.draw do

  root to: 'tours#index'

  namespace :admin do
    resources :tours
    resources :providers
    resources :cities
  end

  resources :tours
end
