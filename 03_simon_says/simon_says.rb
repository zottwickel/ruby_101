#write your code here
def echo (word)
	word
end

def shout (word)
	word.upcase
end

def repeat (word, x=2)
	word + ((" " + word) * (x - 1))
end

def start_of_word (word, x=1)
	word[0...x]
end

def first_word (words)
	words.split(" ").first
end

def titleize (words)
	word = words.split.map do |single|
		if %w(the and over).include?(single)
			single
		else
			single.capitalize
		end
	end
	word.first.capitalize!
	word.join(" ")
end