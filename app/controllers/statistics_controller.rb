class StatisticsController < ApplicationController
    def index
        @statistics = Statistic.all

        @games = Game.all
    end
end
