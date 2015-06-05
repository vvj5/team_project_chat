class MessageController < ApplicationController

#Can I put .limit() on the end? Do I need to make a variablee first?
  def index
    render json: Messages.order(created_at: :desc)
  end

  def create_user
    render json: Messages.create(username: params[:username])
  end

  def show_all_users
    render json: Messages.all(params[:users])
  end

  # def show
  #   begin
  #     render json: Todo.find(params[:id])
  #   rescue ActiveRecord::RecordNotFound => error
  #     render json: { error: error.message }, status: 422
  #   end
  # end

 #  def delete
 #    todo = Todo.find(params[:id])
 #    todo.destroy
 #    render json: { message: "Todo Detroyed" }
 #  end

 # def create
 #    message = Message.create(username: params.fetch(:username), entry: params.fetch(:entry))
 #    render json: message
 #  end


end
