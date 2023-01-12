class UsersController < ApplicationController
    def index
        users = User.all
        render json: users
    end
    
    def create
        user = User.create!(user_params)
        render json: user, status: :created
    end

    def update
    end

    private

    def user_params
        params.permit(:username, :email, :password)
    end
end
