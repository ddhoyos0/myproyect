class CreateUnidadMedidas < ActiveRecord::Migration[5.2]
  def change
    create_table :unidad_medidas do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
