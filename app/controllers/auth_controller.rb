class AuthController < ApplicationController
    def create
      user = User.find_by(username: params[:username])
      is_authenticated = user.authenticate(params[:password]) if user
      if is_authenticated
        render json: { token: encode_token(user), user_id: user.id }
      else
        render json: { errors: ["Incorrect username of password"] }, status: :unprocessable_entity
      end
    end
  end
  