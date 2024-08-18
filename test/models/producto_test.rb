require 'test_helper'

class ProductoTest < ActiveSupport::TestCase
  test "es válido con un nombre" do
    producto = Producto.new(nombre: 'Aceite de motor')
    assert producto.valid?
  end
end
