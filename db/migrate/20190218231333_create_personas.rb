class CreatePersonas < ActiveRecord::Migration[5.2]
  def change
    create_table :personas do |t|
      t.string :tipo_documento
      t.string :identificacion
      t.string :nombre
      t.string :direccion
      t.string :telefono
      t.string :celular
      t.string :correo
      t.date :fecha_nacimiento
      t.references :documento, foreign_key: true      
      t.timestamps
    end
  end
end
