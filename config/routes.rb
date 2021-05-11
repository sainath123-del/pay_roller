Rails.application.routes.draw do
 
  root 'emplyoees#index'
  get '/employees', to: 'employees#show'
  post '/employees/:id', to: 'employee#create'
  get '/salaries', to: 'salaries#show'
  post '/salaries', to: 'salaries#create'
  get '/shift', to: 'shift#show'
  post '/shift', to: 'shift#create'



end