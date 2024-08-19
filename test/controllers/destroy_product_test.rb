require 'test_helper'

class Api::V1::ProductosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @producto = productos(:one)
    setup_auth
  end

  test "debe eliminar un producto" do
    assert_difference('Producto.count', -1) do
      delete api_v1_producto_url(@producto), headers: { Authorization: "Bearer #{@token}" }
    end
    assert_response :no_content
  end

  test "no debe eliminar un producto sin autorización" do
    delete api_v1_producto_url(@producto)
    assert_response :unauthorized
  end
end
