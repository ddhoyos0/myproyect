class CreateTipoDeServicios < ActiveRecord::Migration[5.2]
  def change
    create_table :tipo_de_servicios do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
