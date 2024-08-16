class Api::V1::UsersController < ApplicationController

  # metodo para listar todos los usuarios, para verificaciones. mejor debe eliminarse en producción
  def index
    users = User.all
    render json: users
  end

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
      token = user.generate_jwt
      render json: { token: token, username: user.name }, status: :ok
    else
      render json: { error: 'Usuario y/o Clave inválidas' }, status: :unauthorized
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
