class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

#have to call self and then can reach into genre and get name
  def get_genre_name
  	self.genre.name
  end

  def drake_made_this
    # when this method is called it should assign the song's artist to Drake
    #have to find the artist first or create, otherwise unitialized constant
    drake = Artist.find_or_create_by(name: "Drake")
    self.artist = drake

  end
end
