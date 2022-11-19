Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  root "specials#index"

  get '/about', to: 'specials#about'

  resources :specials
end
