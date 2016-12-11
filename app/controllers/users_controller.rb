class UsersController < ApplicationController
    def new
    end

    def index
      ## Added to create a list of all users for creating the many-to-many relationship. Refactor when JWT passing variables nicely.
      render json: User.select(:name, :id).all
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
