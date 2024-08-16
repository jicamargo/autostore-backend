class Api::V1::UsersController < ApplicationController
  def create
    user = User.new(user_params)
    if user.save
      render json: { status: 'success', message: 'Usuario registrado exitosamente', data: user }, status: :created
    else
      render json: { status: 'error', message: 'Error al registrar el usuario', data: user.errors }, status: :unprocessable_entity
    end
  end

   # POST /api/v1/login
   def login
    user = User.find_by(email: params[:email])
    if user&.authenticate(params[:password])
      # lógica para crear y enviar un token de autenticación con JWT
      render json: { status: 'success', message: 'Logged in successfully', data: user }
    else
      render json: { status: 'error', message: 'Invalid credentials' }, status: :unauthorized
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
