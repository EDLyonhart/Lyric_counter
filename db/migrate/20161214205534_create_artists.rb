class CreateArtists < ActiveRecord::Migration[5.0]
  def change
    create_table :artists do |t|
      t.string :name
      t.integer :genre_id
      t.integer :total_word_count
      t.float :novel_word_ratio

      t.timestamps
    end
  end
end
