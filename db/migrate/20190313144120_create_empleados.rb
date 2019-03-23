class CreateEmpleados < ActiveRecord::Migration[5.2]
  def change
    create_table :empleados do |t|
      t.string :cargo
      t.string :turno
      t.string :sexo
      t.integer :salario
      t.references :personas, foreign_key: true

      t.timestamps
    end
  end
end
