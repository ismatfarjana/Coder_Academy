class BillboardTop10
	attr_accessor :year,:artists
	def initialize(year, artists=[])
		@year=year
		@artists=artists
	end
	
	def status
		puts "#{year} top10 is #{artists}!"
	end
	def add_artist(artist)
		if @artists.length >= 10
			@artists.shift
			@artists<<artist
		else	
		   @artists<<artist
		end
		self
	end
	
	def number_of_artists
		artists.size
	end	
end

billboardtop_10 =BillboardTop10.new(2019, ["Post Malone","Ariana Grande","Billie Eilish"])

billboardtop_10.add_artist("Khalid")
puts billboardtop_10.status

