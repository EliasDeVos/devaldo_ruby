class StaticController < ApplicationController
    def index
        @players = Player.all

        @statistic = Statistic.find_by(name: "Devaldo Rojo")
    end
end
