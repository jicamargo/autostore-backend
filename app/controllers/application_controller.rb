class ApplicationController < ActionController::API

  # para manejar las solicitudes options de CORS
  def options
    head :ok
  end
  
  private

  def authenticate_user!
    header = request.headers['Authorization']
    header = header.split(' ').last if header
    Rails.logger.info "JWT Token: #{header}"

    begin
      decoded = JWT.decode(header, Rails.application.credentials.secret_key_base)[0]
      Rails.logger.info "Decoded JWT: #{decoded}"
      @current_user = User.find(decoded['id'])
    rescue ActiveRecord::RecordNotFound, JWT::DecodeError => e
      Rails.logger.error "Authentication failed: #{e.message}"
      render json: { errors: 'No autorizado' }, status: :unauthorized
    end
  end
end
