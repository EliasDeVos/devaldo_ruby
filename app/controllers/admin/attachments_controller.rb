class Admin::AttachmentsController < Admin::AdminController
    def index
        @attachments = Attachment.all
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
        redirect_to admin_attachments_path
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

