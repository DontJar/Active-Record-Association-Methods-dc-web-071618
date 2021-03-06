class Artist < ActiveRecord::Base
  has_many :songs
  has_many :genres, through: :songs

  def get_genre_of_first_song
    Song.first.genre
  end

  def song_count
    Song.count
  end

  def genre_count
    self.songs.map { |s| s.genre }.uniq.count
  end
end
