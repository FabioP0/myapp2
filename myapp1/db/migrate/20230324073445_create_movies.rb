class CreateMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :movies do |t|
      t.integer :codigo
      t.string :titulo
      t.string :director
      t.string :genero

      t.timestamps
    end
  end
end
