# class Song
#     attr_accessor :name, :artist, :genre

#     @@count = 0
#     @@artist = []
#     @@genre = []

#     def initialize(name, artist, genre)
#         @@name = name
#         @@artist = artist
#         @@count += 1
#     end

#new methiod
class Song
    attr_accessor :name, :artist, :genre
  
    @@count = 0
    @@genres = []
    @@artists = []
  
    def initialize(name, artist, genre)
      @name = name
      @artist = artist
      @genre = genre
      @@count += 1
      @@genres << genre
      @@artists << artist
    end
  
    def self.count
      @@count
    end
  
    def self.genres
      @@genres.uniq
    end
  
    def self.artists
      @@artists.uniq
    end
  
    def self.genre_count
      @@genres.tally
    end
  
    def self.artist_count
      @@artists.tally
    end
  end
  