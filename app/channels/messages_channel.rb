class MessagesChannel < ApplicationCable::Channel
  def subscribed
    stream_from "messages_#{params[:game_id]}_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def send_message(data)
    # process data sent from the page
  end
end
