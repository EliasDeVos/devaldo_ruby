class Admin::GamesController < Admin::AdminController
    def index
        @games = Game.all
    end

    def edit
        @game = Game.find(params[:id])
    end

    def show
        @game = Game.find(params[:id])
    end

    def update
        @game = Game.find(params[:id])
        @game.update game_params
        redirect_to admin_games_path
    end

    def create
        @game = Game.new(game_params)

        @game.save
        redirect_to admin_games_path
    end

    def delete
    end

    def destroy
        Game.find(params[:id]).destroy
        redirect_to admin_games_path
    end

    def new
    end

    private
        def game_params
            params.require(:game).permit(:homeTeam, :score, :awayTeam, :description)
        end
end

