class Api::V1::ProductosController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_producto, only: [:show, :update, :destroy]

   # Rescata de ActiveRecord::RecordNotFound y maneja el error
   rescue_from ActiveRecord::RecordNotFound, with: :record_not_found

  # GET /productos
  def index
    @productos = Producto.all
    render json: @productos
  end

  # GET /productos/:id
  def show
    render json: @producto
  end

  # POST /productos
  def create
    @producto = Producto.new(producto_params)

    if @producto.save
      render json: @producto, status: :created
    else
      render json: @producto.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /productos/:id
  def update
    if @producto.update(producto_params)
      render json: @producto
    else
      render json: @producto.errors, status: :unprocessable_entity
    end
  end

  # DELETE /productos/:id
  def destroy
    @producto.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_producto
      @producto = Producto.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def producto_params
      params.require(:producto).permit(:sku, :nombre, :descripcion, :cantidad, :precio)
    end

    # Maneja el error de registro no encontrado
    def record_not_found
      render json: { error: 'Producto no encontrado' }, status: :not_found
    end
end
