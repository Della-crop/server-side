Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # add patient route
  # update patient route
  # alert patient fall down route
  post '/alert' => 'patients#alert'
  post '/call' => 'patients#call'
  get '/' => 'pages#home'
  get '/all' => 'patients#get_all_patient'
  post '/add' => 'patients#new'
  # put '/update' => ''
  # get '/patient' => ''
end
