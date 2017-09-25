class GamesController < ApplicationController
    def show
      @game = Game.find(params[:id])
      @message = Message.new
    end
    def list
      @games = Game.all
    end
end
