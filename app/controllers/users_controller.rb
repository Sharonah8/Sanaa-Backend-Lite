class UsersController < ApplicationController

  skip_before_action :authenticate_request, only: [:create, :index]

  def index
    users = User.all
    render json: users, only: [:username, :email, :password], status: :accepted
  end

  def create
    user = User.create!(user_params)
    if user
      token = jwt_encode(user_id: user.id)
      render json: {user:user, token:token}, status: :created
    else
      render json: { error: "Invalid user" }, status: :unprocessable_entity
    end
  end

  def update
    # user can change their email only
    # work on itjwt
  end

  private

  def user_params
    params.permit(:username, :email, :password)
  end
end
