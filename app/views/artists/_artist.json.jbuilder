json.extract! artist, :id, :name, :genre_id, :total_word_count, :novel_word_ratio, :created_at, :updated_at
json.url artist_url(artist, format: :json)