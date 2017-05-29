class Admin::AdminController < ApplicationController
    layout "admin"
    include SessionHelper
    before_action :require_admin

    def require_admin
        if !logged_in?
            redirect_to admin_login_path
        end
    end

    def dashboard
    end
end
