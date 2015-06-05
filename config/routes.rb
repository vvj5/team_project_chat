Rails.application.routes.draw do

#Display messages in descending chronological order
get 'messages', to: 'messages#index'

#Create a new user
post 'messages', to: 'messages#create_user'

#Show all users
get 'messages', to: 'messages#show_all_users'

root to: 'messages#index'

match '*not_found_route', to: 'application#skip_cors', via: [:get, :post, :put, :delete]

end




# get '/todos/', to: 'todos#index'

# get '/todos/new', to: 'todos#new'

# post '/todos/', to: 'todos#create'

# delete '/todos/:id', to: 'todos#delete'

# get '/todos/:id', to: 'todos#show'


