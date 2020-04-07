class Song
	attr_accessor :title, :duration, :genre
	def initialize(title, duration, genre)
		@title=title
		@duration=duration
		@genre=genre
	end
	
end

# Create your 3 instances of the Song class here
song_1 =Song.new("Twinkle twinkle", "10sec", "kids rhyme")
song_2 =Song.new("jingle bell", "20sec", "kids rhyme")
song_3 =Song.new("little peter rabit", "10sec", "kids rhyme")