class CreatePeople < ActiveRecord::Migration[6.1]
  def change
    create_table :people do |t|
      t.integer :identificacion
      t.string :nombre
      t.string :apellido
      t.integer :edad

      t.timestamps
    end
  end
end
