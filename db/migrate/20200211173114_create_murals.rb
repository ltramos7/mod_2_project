class CreateMurals < ActiveRecord::Migration[6.0]
  def change
    create_table :murals do |t|
      t.text :mural_name
      t.integer :artist_id
      t.integer :commissinor_id
      t.text :location

      t.timestamps
    end
  end
end
