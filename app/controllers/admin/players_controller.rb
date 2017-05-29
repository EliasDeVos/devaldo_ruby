class Admin::PlayersController < Admin::AdminController
    def index
        @players = Player.all
    end

    def edit
        @player = Player.find(params[:id])
    end

    def show
        @player = Player.find(params[:id])
    end

    def update
        @player = Player.find(params[:id])
        @player.update player_params
        redirect_to admin_players_path
    end

    def create
        @player = Player.new(player_params)

        @player.save
        redirect_to admin_players_path
    end

    def delete
    end

    def destroy
        Player.find(params[:id]).destroy
        redirect_to admin_players_path
    end

    def new
    end

    private
        def player_params
            params.require(:player).permit(:first_name, :last_name, :image)
        end
end

