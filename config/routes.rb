Rails.application.routes.draw do
  get '/' => 'customers#index'

  get '/customers' => 'customers#index'
  get '/customers/new' => 'customers#new'
  post '/customers' => 'customers#create'
  get '/customers/:id' => 'customers#show'
  get '/customers/:id' => 'customers#show'
  patch '/customers/:id/edit' => 'customers#edit'
  delete '/customers' => 'customers#destroy'

  get '/invoices' => 'invoices#index'
  get '/invoices/new' => 'invoices#new'
  post '/invoices' => 'invoices#create'
  get '/invoices/:id' => 'invoices#show'
  get '/invoices/:id' => 'invoices#show'
  patch '/invoices/:id/edit' => 'invoices#edit'
  delete '/invoices' => 'invoices#destroy'

  get '/user' => 'user#index'
  get '/user/new' => 'user#new'
  post '/user' => 'user#create'
  get '/user/:id' => 'user#show'
  get '/user/:id' => 'user#show'
  patch '/user/:id/edit' => 'user#edit'
  delete '/user' => 'user#destroy'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'
end
