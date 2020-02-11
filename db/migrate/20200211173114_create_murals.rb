class CreateMurals < ActiveRecord::Migration[6.0]
  def change
    create_table :murals do |t|
      t.string :mural_name
      t.integer :artist_id
      t.integer :commissinor_id
      t.string :location

      t.timestamps
    end
  end
end
