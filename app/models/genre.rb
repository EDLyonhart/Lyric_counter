class Genre < ApplicationRecord

  has_many :artists
  has_many :songs

  def find_songs_by_genre
    @songs = Song.where(genre: self.id)
  end

  def get_genre_word_count
    genre_word_count = 0
    @songs = Song.where(genre_id: self.id)
    @songs.each do |song|
      genre_word_count = genre_word_count + song.word_count
    end

    genre_word_count
  end

  def get_genre_novel_word_count
    novel_word_count = 0
    @songs = Song.where(genre_id: self.id)
    @songs.each do |song|
      novel_word_count = novel_word_count + song.novel_word_count
    end

    novel_word_count
  end

  def genre_novel_word_ratio
    total_words = self.get_genre_word_count
    novel_words = self.get_genre_novel_word_count

    ((novel_words.to_f / total_words.to_f) * 100).round(4) || "zero"
  end

  def word_breakdown
    words = []
    lyric_break_down = {}

    find_songs_by_genre.each do |song|
      song.lyrics.split(" ").each do |word|
        words << word.downcase.gsub(/[^0-9a-z ]/i, '')
      end
    end

    words.each do |word|
      lyric_break_down[word] ? lyric_break_down[word] += 1 : lyric_break_down[word] = 1
    end

    lyric_break_down.sort_by {|k, v| [v] }.reverse[0..29]
  end

end
