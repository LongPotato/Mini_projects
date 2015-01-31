def add(num1, num2)
	num1 + num2
end


def subtract(num1, num2)
	num1 - num2
end


def sum(array)
	if array.empty? == true
		return 0
	else
		sum = 0
		array.each do |number|
			sum = sum + number
		end
		return sum
	end	
end



def factorial(num)
	if num == 0
		return 1
	else
		return result = num * factorial(num-1)
	end
end
