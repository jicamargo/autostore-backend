require 'test_helper'

class Api::V1::ProductosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @producto_params = {
      sku: 'SKU001',
      nombre: 'Nuevo Producto',
      descripcion: 'Descripción del producto',
      cantidad: 10,
      precio: 100.50
    }
    setup_auth
  end

  test "debe crear un producto" do
    assert_difference('Producto.count') do
      post api_v1_productos_url, params: { producto: @producto_params }, headers: { Authorization: "Bearer #{@token}" }
    end
    assert_response :created
  end

  test "no debe crear un producto sin autorización" do
    post api_v1_productos_url, params: { producto: @producto_params }
    assert_response :unauthorized
  end
end
