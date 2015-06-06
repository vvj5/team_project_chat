class MessageController < ApplicationController

  def index
    render json: Message.all.select { |message| message.created_at > (Time.now - 300) }
  end

  def create
    begin
    message = Message.create(username: params.fetch(:username), post: params.fetch(:post), chatroom: params.fetch(:chatroom))
      render json: message
    rescue ActionController::ParameterMissing => error
      render json: { error: error.message }, status: 422
    end
  end

  def recent_users
      time_span = ((Time.now - 14400)..Time.now)
      messages = Message.all
      render json: messages.where(created_at: time_span).group(:username)
  end

end












###c
  # def leaderboard
  #   messages = Message.all
  #   messages_array = messages.group(:username).count.sort_by { |name, count| count }
  #   messages_array.reject! { |name, count| name == "" }
  #   render json: Hash[messages_array.last(10).reverse]
  # end

###m
#   def leaderboard
#     leaders = Message.all.group(:username).count.sort_by { |username, count| count }.last(10).reverse
#     leaders = Hash[leaders]
#     render json: leaders
#   end

#   def recent_users
#     recent_messages = Message.all.select { |message| message.created_at > (Time.now - 14400) }
#     render json: recent_messages
#   end

#   def active_chatrooms
#     chatrooms = Message.all.group(:chatroom).count.sort_by { |chatroom, count| count }.last(10).reverse
#     chatrooms = Hash[chatrooms]
#     render json: chatrooms
#   end
