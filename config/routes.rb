Rails.application.routes.draw do
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
  get '/invoices/:id/edit' => 'invoices#edit'
  patch '/invoices/:id' => 'invoices#update'
  delete '/invoices/:id' => 'invoices#destroy'

  get '/user' => 'user#index'
  get '/user/new' => 'user#new'
  post '/user' => 'user#create'
  get '/user/:id' => 'user#show'
  get '/user/:id/edit' => 'user#edit'
  patch '/user/:id' => 'user#update'
  delete '/user/:id' => 'user#destroy'

end
