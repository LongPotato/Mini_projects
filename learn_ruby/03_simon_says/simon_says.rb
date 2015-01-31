def echo(input)
	input
end

def shout(input)
	input.upcase
end


def repeat(input, time = 2)
	word = input + " "
  	result = (word * time).strip  #strip will cut off whitespaces front and back of a string
  	return result
end

#second solution:
# ([input] * time).join(" ")

def start_of_word(s, n)
  s[0...n]
end


def first_word(s)
  words = s.split(" ")
  return words[0]
end


def titleize(string)
  array = string.split(" ")
  little_words = ['the','and','is','a','an','over','in','on','of','or']


  array.each do |word|
    if ((little_words).include?(word))
      word.downcase!
    else
      word.capitalize!
    end
  end

  array[0].capitalize!
  return array.join(" ") 
end

