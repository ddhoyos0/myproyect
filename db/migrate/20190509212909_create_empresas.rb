class CreateEmpresas < ActiveRecord::Migration[5.2]
  def change
    create_table :empresas do |t|
      t.attachment :logo
      t.references :persona, foreign_key: true

      t.timestamps
    end
  end
end
