class CreateProductos < ActiveRecord::Migration[7.0]
  def change
    create_table :productos do |t|
      t.string :sku
      t.string :nombre
      t.text :descripcion
      t.integer :cantidad
      t.decimal :precio

      t.timestamps
    end
  end
end
