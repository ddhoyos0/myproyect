class CreateProductos < ActiveRecord::Migration[5.2]
  def change
    create_table :productos do |t|
      t.string :codigo_producto
      t.string :nombre
      t.string :unidad
      t.integer :valor_unitario
      t.integer :cantidad
      t.references :marca, foreign_key: true

      t.timestamps
    end
    add_index :productos, :codigo_producto, unique: true
  end
end
