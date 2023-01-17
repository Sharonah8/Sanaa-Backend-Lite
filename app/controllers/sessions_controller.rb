class SessionsController < ApplicationController
  before_action :authenticate_request, except: :create

  # POST /auth/login
  def create
    user = User.find_by(email: params[:email])
    # puts "I worked"
    if user&.authenticate(params[:password])
      token = jwt_encode(user_id: user.id)
      render json: { 
        user: {
          email: user.email
        },
        token: token
       }, status: :ok
    else
      render json: { error: 'unauthorized' }, status: :unauthorized
    end
  end
  
  end