class Artist

	@@all = []

	attr_accessor :name
	attr_reader :genre

		def initialize(name)
			@name = name
			@@all << self
		end

		def self.all 
			@@all 
		end

		def new_song(name, genre)
			Song.new(name, self, genre)
		end

		def songs
			Song.all.select do |songs|
				songs.artist == self
			end
		end

		def genres
			self.songs.map do |genre|
				genre.genre
			end
		end



end