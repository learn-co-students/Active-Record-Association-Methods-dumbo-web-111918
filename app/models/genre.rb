class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    # return the number of songs in a genre
    self.songs.count
  end

##don't need to iterate through songs!!
  def artist_count
     self.artists.count
  end

  # def artist_count
  #   # return the number of artists associated with the genre
  #   all = self.songs.map do |song|
  #     song.artist
  #   end
  #   all.count
  # end

#can already get to artists by calling self.artists.
#so just iterate through there

def all_artist_names
  self.artists.map do |artist|
    artist.name
  end
end


  # def all_artist_names
  #   # return an array of strings containing every musician's name
  # artist_object = self.songs.map do |song|
  #    song.artist
  #   end
  #   artist_object.map do |artist|
  #     artist.name
  #    end
  # end
end
