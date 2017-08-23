class Book
	def title=(str)
		words = str.split
		new_title = ""
		words.each_with_index do |word, index|
			noncaps = ["and","or","but","in","at","a","an","the", "of"]
			if index == 0
        		new_title << word.capitalize
        	elsif noncaps.include?(word)
        		new_title << word
      		else
        		new_title << word.capitalize
      		end
      	new_title << " "
    	end
    @title = new_title.chop
  	end
  	def title
    		@title
  	end
end