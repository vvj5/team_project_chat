Rails.application.routes.draw do

#Display messages in descending chronological order
get 'messages', to: 'message#index'

post 'messages/create', to: 'message#create'

get 'messages/recent_users', to: 'message#recent_users'

get 'messages/leaderboard', to: 'message#leaderboard'

root to: 'message#index'

match '*not_found_route', to: 'application#skip_cors', via: [:get, :post, :put, :delete]

end















###c
#  get '/messages', to: 'messages#index'
#  post 'messages/new', to: 'messages#create'
#  get 'messages/leaderboard', to: 'messages#leaderboard'
#  get 'messages/top_users', to: 'messages#top_users'
#  match '*not_found_route', to: 'application#skip_cors', via: [:get, :post, :put, :delete]

###m
#  get "messages/leaderboard", to: "messages#leaderboard"
#   get "messages/recent_users", to: "messages#recent_users"
#   get "messages/active_chatrooms", to: "messages#active_chatrooms"
#   get "messages", to: "messages#index"
#   post "messages", to: "messages#create"

###b
#   get '/chat', to: 'chat_room#index' # getting all messages w/in last 4 hours
#   get '/chat/history', to: 'chat_room#history'
#   get '/chat/profile/:username', to: 'chat_room#profile'
#   get '/leaderboard', to: 'chat_room#leaderboard'
#   post '/new_user', to: 'chat_room#create_user'
#   post '/chat', to: 'chat_room#post_msg'

