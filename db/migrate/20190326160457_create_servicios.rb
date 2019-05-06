class CreateServicios < ActiveRecord::Migration[5.2]
  def change
    create_table :servicios do |t|
      t.string :nombre
      t.time :duracion
      t.integer :precio     
      t.references :tipo_de_servicio, foreign_key: true
      t.references :impuestos, foreign_key: true
      
      t.timestamps
    end
  end
end
