class Album
	attr_accessor :title,:release_date,:songs
	def initialize(title, release_date, songs=[])
		@title=title
		@release_date=release_date
		@songs=songs
	end
	
	def add_song(song)
		@songs<<song
		self
	end
	
	def number_of_songs
		@songs.size
	end	
end

album_1=Album.new("Backstreet Boys", 1996, ["Quit playing games with my heart", "I'll never break your heart"])
album_2=Album.new("Backstreet's Back", 1997, ["Everybody (Backstreet's Back)", "As Long as You Love Me"])
p album_1.songs
p album_2.songs
p album_1.number_of_songs
