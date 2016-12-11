class UsersController < ApplicationController
    def new
    end

    def create
        user = User.new(user_params)
        if user.save
            render json: {}
        else
            render json: {
                message: 'fail'
            }
        end
    end

    private

    def user_params
        params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
end
