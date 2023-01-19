class ApplicationController < ActionController::API
  include JsonWebToken

  # before_action :authenticate_request

  # private
  
  def current_user
    header = request.headers["Authorization"]
    header = header.split(" ").last if header
    decoded = jwt_decode(header)
    @user = decoded ? User.find(decoded[:user_id]) : nil
  end


  def authenticate_request
    
    render json: { message: 'Please sign in' }, status: :unauthorized unless current_user

  end
end
