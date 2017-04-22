Rails.application.routes.draw do
  get 'recognizer/index'
  get '/search', to: 'recognizer#search'

  root 'recognizer#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
