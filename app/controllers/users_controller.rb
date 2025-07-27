class UsersController < ApplicationController
  def create
    user = User.new(user_params)
    if user.save
      render json: user, status: :created_at
    else
      render json: user.errors, status: :unprocessable_entity
    end
  end

  private
  def user_params
    params.permit(:username, :password_digest)
  end
end
