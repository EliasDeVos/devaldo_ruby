class Admin::UsersController <Admin::AdminController
    def index
        @users = User.all
    end

    def edit
    end

    def create
        @user = User.new(user_params)

        @user.save
        redirect_to @user
    end

    private
        def user_params
            params.require(:user).permit(:name, :email, :password_digest)
        end

    def delete
    end

    def new
    end

    def show
        @user = User.find(params[:id])
    end

    def login
    end
end
