class CreatePeliculas < ActiveRecord::Migration[5.1]
  def change
    create_table :peliculas do |t|
      t.string :title
      t.integer :year
      t.integer :rating
      t.string :description

      t.timestamps
    end
  end
end
