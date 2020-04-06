books = [{:title => "Sapiens",
		:author => "Yuval Noah Harari",
		:year => "2011"},
	    {:title => "The Singularity Is Near: When Humans Transcend Biology",
		 :author => "Ray Kurzweil",
		 :year => "2005"},
		{:title => "Deep Medicine",
		:author => "Eric Topol",
		:year => "2019"}]
p books.map {|x|"#{x[:title]} by #{x[:author]}(#{x[:year]})" }