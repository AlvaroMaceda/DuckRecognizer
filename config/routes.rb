Rails.application.routes.draw do

  controller :recognizer do
    get '/'         => :index
    post '/search'  => :search, as: 'search'
    get '/search'   => :search
  end

  root 'recognizer#index'
end
