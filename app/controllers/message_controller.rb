class MessageController < ApplicationController

  def index
    render json: Message.all.select { |message| message.created_at > (Time.now - 300) }
  end

  def create
    begin
      message = Message.create(username: params.fetch(:username), post: Swearjar.default.censor(params.fetch(:post), chatroom: params.fetch(:chatroom))
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

  def fanatics
    fanatics = Message.all.group(:username).count.sort_by { |username, count| count }.last(10).reverse
    fanatics = Hash[fanatics]
    render json: fanatics
  end

  def top_chatrooms
    chatrooms = Message.all.group(:chatroom).count.sort_by { |chatroom, count| count }.last(10).reverse
    chatrooms = Hash[chatrooms]
    render json: chatrooms
  end

end
