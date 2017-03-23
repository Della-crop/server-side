Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # add patient route
  # update patient route
  # alert patient fall down route
  post '/alert' => 'patients#alert'
  post '/call' => 'patients#call'
  get '/' => 'pages#home'
end
