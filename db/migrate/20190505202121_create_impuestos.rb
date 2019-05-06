class CreateImpuestos < ActiveRecord::Migration[5.2]
  def change
    create_table :impuestos do |t|
      t.string :nombre
      t.integer :valor
      t.boolean :estado

      t.timestamps
    end
  end
end
