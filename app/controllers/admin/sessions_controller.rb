class Admin::SessionsController < Admin::AdminController
    skip_before_action :require_admin, only: [:new, :create]
    def new
        render :layout => false
    end

    def create
        user = User.find_by(email: params[:session][:email].downcase)
        if user && user.authenticate(params[:session][:password])
            log_in user
            redirect_to admin_path
        else
            flash.now[:danger] = 'Invalid name and password'
            render 'new', :layout => false
        end
    end

    def destroy
        log_out
        redirect_to admin_path
    end
end
