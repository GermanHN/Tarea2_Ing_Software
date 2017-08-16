class CreateLists < ActiveRecord::Migration[5.1]
  def change
    create_table :lists do |t|
      t.string :name
      t.string :lastname
      t.text :phone

      t.timestamps
    end
  end
end
