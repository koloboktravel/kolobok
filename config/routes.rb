Rails.application.routes.draw do
  namespace :admin do
    resources :tours
    resources :providers
    resources :cities
  end
end
