json.extract! song, :id, :title, :lyrics, :total_word_count, :novel_word_ratio, :artist_id, :genre_id, :created_at, :updated_at
json.url song_url(song, format: :json)