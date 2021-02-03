Rails.application.routes.draw do
  resources :calculations
  get '/calculations/deleteall', to: 'calculations#delete_all'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
