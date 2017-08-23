#write your code here
def add (num1,num2)
	num1 + num2
end

def subtract (num1,num2)
	num1 - num2
end

def sum (array)
	array.inject(0) do |rsum,x| 
		rsum + x
	end
end

def multiply (array)
	array.inject(:*)
end

def power (num1,num2)
	num1 ** num2
end

def factorial (num)
	if num == 0
		1
	else
		num * factorial(num - 1)
	end
end