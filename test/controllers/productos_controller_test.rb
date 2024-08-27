require "test_helper"

class ProductosControllerTest < ActionDispatch::IntegrationTest
  test "obtener el listado de productos" do
    get api_v1_productos_url
    assert_response :success
    assert_not_nil JSON.parse(response.body) # Verifica que la respuesta no esté vacía
  end

  setup do
    @producto = productos(:one) # Toma un producto de fixtures
    setup_auth # Configura la autenticación
  end

  test "debe mostrar un producto" do
    get api_v1_producto_url(@producto), headers: { Authorization: "Bearer #{@token}" }
    assert_response :success
    json_response = JSON.parse(response.body)
    assert_equal @producto.nombre, json_response['nombre'] # Verifica que el nombre sea correcto
  end

  test "debe devolver un error si el producto no existe" do
    get api_v1_producto_url(id: 'inexistente'), headers: { Authorization: "Bearer #{@token}" }
    assert_response :not_found
    json_response = JSON.parse(response.body)
    assert_equal 'Producto no encontrado', json_response['error']
  end
end
