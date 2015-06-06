Rails.application.routes.draw do

#Display messages in descending chronological order
get 'messages', to: 'message#index'

post 'messages/create', to: 'message#create'

get 'messages/recent_users', to: 'message#recent_users'

get 'messages/fanatics', to: 'message#fanatics'

get 'messages/top_chatrooms', to: 'message#top_chatrooms'

root to: 'message#index'

match '*not_found_route', to: 'application#skip_cors', via: [:get, :post, :put, :delete]

end
