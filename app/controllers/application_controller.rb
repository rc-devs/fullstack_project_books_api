class ApplicationController < ActionController::API
  def authenticate_request
  header = request.headers["Authorization"]
  token = header.split.last if header.present?
  begin
    decoded = JWT.decode(token, Rails.application.credentials.secret_key_base).first
    @current_user = User.find(decoded["user_id"])
  rescue JWT::ExpiredSignature
    render json: { error: "Token has expired" }, status: :unauthorized
    return
  rescue JWT::DecodeError => e
    render json: { error: "Unauthorized - #{e.message}" }, status: :unauthorized
    return
  end
end
end
