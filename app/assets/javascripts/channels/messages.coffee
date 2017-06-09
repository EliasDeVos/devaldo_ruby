App.global_chat = App.cable.subscriptions.create {
    channel: "MessagesChannel"
  },
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    # Data received
    $('.js-messages').append("<div>" + data.message + " -- " + data.user + "</div>")