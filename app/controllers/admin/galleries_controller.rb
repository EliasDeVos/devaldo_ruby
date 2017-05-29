class Admin::GalleriesController < Admin::AdminController
    def index
        @galleries = Gallery.all
    end

    def edit
        @gallery = Gallery.find(params[:id])
    end

    def show
        @gallery = Gallery.find(params[:id])
    end

    def update
        @gallery = Gallery.find(params[:id])
        @gallery.update gallery_params
        redirect_to admin_galleries_path
    end

    def create
        @gallery = Gallery.new(gallery_params)

        @gallery.save
        redirect_to admin_galleries_path
    end

    def delete
    end

    def destroy
        Gallery.find(params[:id]).destroy
        redirect_to admin_galleries_path
    end

    def new
    end

    private
        def gallery_params
            params.require(:gallery).permit(:title, :image)
        end
end

