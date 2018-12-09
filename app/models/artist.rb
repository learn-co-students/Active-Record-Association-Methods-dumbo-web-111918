class Artist < ActiveRecord::Base
  has_many :songs
  has_many :genres, through: :songs

#have to go thru songs and then can call first song and get genre
  def get_genre_of_first_song
    #return the genre of the artist's first saved song
    self.songs.first.genre
  end

  def song_count
    #return the number of songs associated with the artist
    self.songs.count
  end

#don't need to iterate through self.songs
#can just do!!!, I guess it returns the genres object thru songs
  def genre_count
    self.genres.size
  end

  # def genre_count
  #   #return the number of genres associated with the artist
  #   all = self.songs.map do |song|
  #     song.genre
  #    end
  #    all.count
  #end
end
