class Artist
	attr_accessor :name,:albums
	def initialize(name, albums=[])
		@name=name
		@albums=albums
	end
	
	def add_album(album)
		@albums<<album
		self
	end
	
	def number_of_albums
		albums.size
	end	
end

artist1= Artist.new("Ricky Martin", ["MTV Unplugged","Sound loaded"])
p artist1.number_of_albums
artist1.add_album("Me Aamaras")
p artist1.number_of_albums
