class CreateCita < ActiveRecord::Migration[5.2]
  def change
    create_table :cita do |t|
      t.references :servicio, foreign_key: true
      t.references :empleado, foreign_key: true
      t.datetime :fecha
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
