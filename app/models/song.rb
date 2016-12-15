class Song < ApplicationRecord

  belongs_to :genre
  belongs_to :artist

  def find_artist
    @artist = Artist.where(id: self.artist_id)
    return @artist[0]
  end

  def find_genre
    @genre = Genre.where(id: self.genre_id)
    return @genre[0]
  end

  def full_lyrics
    self.lyrics
  end

  def words
    words = []

    lyrics.split(" ").each do |word|
      words << word.downcase.gsub(/[^0-9a-z ]/i, '')
    end

    words
  end

  def word_breakdown
    lyric_break_down = {}

    words.each do |word|
      lyric_break_down[word] ? lyric_break_down[word] += 1 : lyric_break_down[word] = 1
    end

    lyric_break_down.sort_by {|k, v| [v] }.reverse
  end


  def word_count
    words.length
  end

  def novel_word_count
    word_breakdown.length
  end

  def novel_word_ratio
    ((novel_word_count.to_f / word_count.to_f) * 100).round(4) 
  end
  
end
