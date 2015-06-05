Rails.application.routes.draw do

#Display messages in descending chronological order
get 'messages', to: 'message#index'

#Create a new user
post 'messages/create_user', to: 'message#create_user'

#Show all users
get 'messages/show_all_users', to: 'message#show_all_users'

#Create a new post
post 'messages/create_post', to: 'message#create_post'

root to: 'message#index'

match '*not_found_route', to: 'application#skip_cors', via: [:get, :post, :put, :delete]

end




# get '/todos/', to: 'todos#index'

# get '/todos/new', to: 'todos#new'

# post '/todos/', to: 'todos#create'

# delete '/todos/:id', to: 'todos#delete'

# get '/todos/:id', to: 'todos#show'


