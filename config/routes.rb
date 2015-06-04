Rails.application.routes.draw do

get 'messages', to: 'messages#index'

post 'messages', to: 'messages#create'

root to: 'messages#index'

match '*not_found_route', to: 'application#skip_cors', via: [:get, :post, :put, :delete]

end




# get '/todos/', to: 'todos#index'

# get '/todos/new', to: 'todos#new'

# post '/todos/', to: 'todos#create'

# delete '/todos/:id', to: 'todos#delete'

# get '/todos/:id', to: 'todos#show'


