class Book
    
    @@special_case = ['the', 'a', 'an', 'and', 'of', 'in']
    
    def title=(string)
		@words = string.split(" ")
		@new_title = ""
		@new_title << @words[0].capitalize + " " 	#capitalize the first word
		for n in 1...@words.length 			#start off with the second word
		    if (@@special_case.include? @words[n])
		        @new_title << @words[n] + " "
			else
			    @new_title << @words[n].capitalize + " "
		    end
		end
	end
	
	def title
		return @new_title.strip
	end
	
end


book = Book.new
book.title = "the love in the time of cholera"
puts book.title
