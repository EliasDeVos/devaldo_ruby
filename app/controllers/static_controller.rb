class StaticController < ApplicationController
    def index
        @players = Player.all
    end
end
