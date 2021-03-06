class Admin::AttachmentsController < Admin::AdminController
    def index
        if params.has_key?(:game_id)
            @attachments = Attachment.where(:game_id => params['game_id'])
        else
            @attachments = Attachment.all
        end
    end

    def edit
        @attachment = Attachment.find(params[:id])
    end

    def show
        @attachment = Attachment.find(params[:id])
    end

    def update
        @attachment = Attachment.find(params[:id])
        @attachment.update attachment_params
        redirect_to admin_attachments_path
    end

    def create
        @attachment = Attachment.new(attachment_params)

        @attachment.save
        if params.has_key?(:game_id)
            @game = Game.find(params[:game_id])
            redirect_to admin_game_path(game)
        else
            redirect_to admin_attachments_path
        end

    end

    def delete
    end

    def destroy
        Attachment.find(params[:id]).destroy
        redirect_to admin_attachments_path
    end

    def new
    end

    private
        def attachment_params
            params.require(:attachment).permit(:name, :image, :game_id)
        end
end

