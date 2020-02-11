class CreateMuralFavorites < ActiveRecord::Migration[6.0]
  def change
    create_table :mural_favorites do |t|
      t.integer :user_id
      t.integer :mural_id

      t.timestamps
    end
  end
end
