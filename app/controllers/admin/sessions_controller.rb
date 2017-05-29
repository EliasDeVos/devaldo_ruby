class Admin::SessionsController < Admin::AdminController
    skip_before_action :require_admin, only: [:new, :create]
    def new
    end

    def create
        user = User.find_by(email: params[:session][:email].downcase)
        if user && user.authenticate(params[:session][:password])
            log_in user
            redirect_to admin_path
        else
            flash.now[:danger] = 'Invalid name and password'
            render 'new'
        end
    end

    def destroy
    end
end
