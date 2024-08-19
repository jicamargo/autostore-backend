require 'test_helper'

class Api::V1::ProductosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @producto = productos(:one)
    @update_params = {
      nombre: 'Producto Actualizado',
      precio: 200.00
    }
    setup_auth
  end

  test "debe actualizar un producto" do
    patch api_v1_producto_url(@producto), params: { producto: @update_params }, headers: { Authorization: "Bearer #{@token}" }
    assert_response :success
    @producto.reload
    assert_equal 'Producto Actualizado', @producto.nombre
    assert_equal 200.00, @producto.precio
  end

  test "no debe actualizar un producto sin autorización" do
    patch api_v1_producto_url(@producto), params: { producto: @update_params }
    assert_response :unauthorized
  end
end
