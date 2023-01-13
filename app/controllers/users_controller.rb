class UsersController < ApplicationController
    def index
        users = User.all
        render json: users, only: [:username, :email, :password], status: :accepted
    end

    
    
    def create
        user = User.create!(user_params)
        render json: user, status: :created
        # add condition for user creation
        # render a json response
        # unprocessable entity response
    end

    def update
        # user can change their email only
        # work on it
    end

    private

    def user_params
        params.permit(:username, :email, :password)
    end
end
