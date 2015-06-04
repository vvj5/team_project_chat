class MessageController < ApplicationController

  def index
    render json: Messages.order()

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


end
