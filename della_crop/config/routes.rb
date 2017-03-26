Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # alert patient fall down route
  post '/alert' => 'patients#alert'
  post '/call' => 'patients#call'
  get '/' => 'pages#home'
  get '/all' => 'patients#get_all_patient'
  post '/add' => 'patients#new'
  get '/patients/:first_name' => 'patients#fetch_patient_by_name'
  get '/patients' => 'patients#fetch_all_patient'
  get '/patients/:id' => 'patients#fetch_patient_by_id'
  patch '/patients/:id' => 'patients#update'
  delete '/patients/:id' => 'patients#destroy'
  # TODO uncomment the alert route
  # post '/alert/:id' => 'patients#alert'
end
