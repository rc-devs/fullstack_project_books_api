class ApplicationController < ActionController::API
  def authenticate_request
    header = request.headers["Authorization"]
    header = header.split("").last if header
  end
end
