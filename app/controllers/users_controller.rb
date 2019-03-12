class UsersController < Clearance::UsersController
    before_action :require_login, only: [:index, :edit, :update, :show, :destroy]

    def index 
        @users = User.all
    end

    def edit 
        @user = User.find(params[:id])
    end

    def update 
        selected_user = User.find(params[:id])
        selected_user.update(user_params)
        redirect_to selected_user
    end

    def show 
        @user = User.find(params[:id])
    end

    def destroy 
        destroy_user = User.find(params[:id])
        destroy_user.destroy
        redirect_to users_path
    end

    private 
    def user_params
        params[:user].permit(
            :email,
            :password, 
            :first_name,
            :last_name
        )
    end
end
