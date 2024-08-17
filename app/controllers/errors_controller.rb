class ErrorsController < ApplicationController
  def not_found
    render json: { error: 'Ruta no encontrada' }, status: :not_found
  end
end
