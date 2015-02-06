def translate(string)
    	words = string.split(" ")
	vowel = ['a','e','i','o','y'] 	#u is a special case
	words.map! do |word| 
	    counter = 0
	    if word[0] == "u" 	#if the first letter is u, add "ay"
	        word = word + "ay"
	    else
	    word.split("").each do |letter|
		    if (vowel.include? (letter))
			    word = word + "ay"
			    break
		    else
			    word = word + letter
			    counter += 1 	#position of the shift
		    end
	    end
	    end
	    word = word[counter..word.length]
	end
	string = words.join(" ")
	return string
end



puts translate("quiet")
			 
