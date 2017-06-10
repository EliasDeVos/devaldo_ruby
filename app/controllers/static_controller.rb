class StaticController < ApplicationController
    def index
        @players = Player.all

        @statistic = Statistic.find_by(name: "Devaldo Rojo")
        @game = Game.order('created_at').last
    end
end
