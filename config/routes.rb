Rails.application.routes.draw do
  get '/customers' => 'customers#index'
  get '/customers/new' => 'customers#new'
  post '/customers' => 'customers#create'
  get '/customers/:id' => 'customers#show'
  get '/customers/:id' => 'customers#show'
  patch '/customers/:id/edit' => 'customers#edit'
  delete '/customers/:id' => 'customers#destroy'

  get '/invoices' => 'invoices#index'
  get '/invoices/new' => 'invoices#new'
  post '/invoices' => 'invoices#create'
  get '/invoices/:id' => 'invoices#show'
  get '/invoices/:id' => 'invoices#show'
  patch '/invoices/:id/edit' => 'invoices#edit'
  delete '/invoices/:id' => 'invoices#destroy'

  get '/tasks' => 'tasks#index'
  get '/tasks/new' => 'tasks#new'
  post '/tasks' => 'tasks#create'
  get '/tasks/:id' => 'tasks#show'
  get '/tasks/:id' => 'tasks#show'
  patch '/tasks/:id/edit' => 'tasks#edit'
  delete '/tasks/:id' => 'tasks#destroy'

  get '/user' => 'user#index'
  get '/user/new' => 'user#new'
  post '/user' => 'user#create'
  get '/user/:id' => 'user#show'
  get '/user/:id' => 'user#show'
  patch '/user/:id/edit' => 'user#edit'
  delete '/user/:id' => 'user#destroy'

end
