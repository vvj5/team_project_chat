class MessageController < ApplicationController

#Can I put .limit() on the end? Do I need to make a variable first?
  def index
    render json: Message.order(created_at: :desc)
  end

  # def create_user
  #   render json: Message.create(username: params[:username])
  # end

  # def create_post
  #   render json: Message.create(post: params[:post])
  # end

  # def create_chatroom
  #   render json: Message.create(chatroom: params[:chatroom])
  # end

  def create
    begin
    message = Message.create(username: params.fetch(:username), post: params.fetch(:post), chatroom: params.fetch(:chatroom))
      render json: message
    rescue ActionController::ParameterMissing => error
      render json: { error: error.message }, status: 422
    end
  end

  def show_all_users
    render json: Message.all(params[:username])
  end

end
