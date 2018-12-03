Rails.application.routes.draw do
  get '/' => 'customers#index'

  get '/customers' => 'customers#index'
  get '/customers/new' => 'customers#new'
  post '/customers' => 'customers#create'
  get '/customers/:id' => 'customers#show'
  get '/customers/:id/edit' => 'customers#edit'
  patch '/customers/:id' => 'customers#update'
  delete '/customers/:id' => 'customers#destroy'

  get '/invoices' => 'invoices#index'
  get '/invoices/new' => 'invoices#new'
  post '/invoices' => 'invoices#create'
  get '/invoices/:id' => 'invoices#show'
  get '/invoices/:id/pdf' => 'invoices#pdf'
  get '/invoices/:id/edit' => 'invoices#edit'
  patch '/invoices/:id' => 'invoices#update'
  delete '/invoices/:id' => 'invoices#destroy'

  get '/tasks' => 'tasks#index'
  get '/tasks/new' => 'tasks#new'
  post '/tasks' => 'tasks#create'
  get '/tasks/:id' => 'tasks#show'
  get '/tasks/:id/edit' => 'tasks#edit'
  patch '/tasks/:id' => 'tasks#update'
  delete '/tasks/:id' => 'tasks#destroy'

  get '/users/new' => 'users#new'
  post '/users' => 'users#create'
  get '/users/:id' => 'users#show'
  get '/users/:id/edit' => 'users#edit'
  patch '/users/:id' => 'users#update'
  delete '/users/:id' => 'users#destroy'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'
end
