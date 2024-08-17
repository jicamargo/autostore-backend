class ApplicationController < ActionController::API

  # para manejar las solicitudes options de CORS
  def options
    head :ok
  end
  
  private

  def authenticate_user!
    header = request.headers['Authorization']
    header = header.split(' ').last if header

    begin
      decoded = JWT.decode(header, Rails.application.secrets.secret_key_base)[0]
      @current_user = User.find(decoded['id'])
    rescue ActiveRecord::RecordNotFound, JWT::DecodeError
      render json: { errors: 'No autorizado' }, status: :unauthorized
    end
  end
end
