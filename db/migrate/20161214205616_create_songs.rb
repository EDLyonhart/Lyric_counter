class CreateSongs < ActiveRecord::Migration[5.0]
  def change
    create_table :songs do |t|
      t.string :title
      t.text :lyrics
      t.integer :total_word_count
      t.float :novel_word_ratio
      t.integer :artist_id
      t.integer :genre_id

      t.timestamps
    end
  end
end
