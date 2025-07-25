class SessionsController < ApplicationController
  before_action :authenticate_request, except: [:create]

  def create
    user = User.find_by(username: params[:username])
    if user&.authenticate(params[:password])
      token = jwt_encode({ user_id: user.id, exp: 24.hours.from_now.to_i }, Rails.application.credentials.secret_key_base)
      render json: { token: token }, status: :ok
    else
      render json: { error: "Unauthorized" }, status: :unauthorized
    end
  end

  def show
    user = User.find_by(id: params[:id])

    render json: user, status: :ok
  end

  private
  def jwt_encode(payload, exp = 24.hours.from_now)
    payload[:exp] = exp.to_i
    JWT.encode(payload, Rails.application.credentials.secret_key_base)
  end
end
