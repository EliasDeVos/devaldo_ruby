class MessagesController < ApplicationController
  def create
    @game = Game.find(params[:game_id])
    @message = Message.new(message_params)
    if @message.save
       ActionCable.server.broadcast "messages_#{@game.id}_channel",
         message: @message.message,
         user: @message.user
    else
      respond_to do |f|
        f.html {redirect_to game_path($game)}
        f.js 
      end
    end
  end
 
  private
    def message_params
      params.require(:message).permit(:message, :user, :game_id)
    end
end
