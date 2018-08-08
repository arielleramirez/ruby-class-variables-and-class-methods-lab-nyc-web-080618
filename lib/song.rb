class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []



  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre

   end
   def self.count
     @@count
   end

   def self.artists
     @@artists.uniq
 end

 def self.genres
   @@genres.uniq
 end

 def self.genre_count
   hash = {}
   @@genres.each do |type|
     if hash[type] == nil
       hash[type] = 1
     else
       hash[type] += 1
     end
   end
   return hash
end

def self.artist_count
  hash = {}
  @@artists.each do |song|
    if hash[song] == nil
      hash[song] = 1
    else
      hash[song] +=1
    end
  end
  return hash
end
end
