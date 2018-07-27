class Genre

	@@all = []

	attr_accessor :name

		def initialize(name)
			@name = name
			@@all << self
		end

		def self.all 
			@@all = []
		end

		def new_song(name, artist, genre)
			Song.new(name, artist, self)
		end

		def songs
			Song.all.select do |song|
				song.genre == self
			end
		end

		def artists
			self.songs.map do |artist|
				artist.artist
			end
		end



end