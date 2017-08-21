class CreateRegistroMaestros < ActiveRecord::Migration[5.1]
  def change
    create_table :registro_maestros do |t|
      t.string :nombre
      t.string :cuenta
      t.string :area

      t.timestamps
    end
  end
end
