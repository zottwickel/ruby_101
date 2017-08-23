def translate(s)
  @vowels = ['a','e','i','o','u','y']
  s.split.map do |word|
    i = 0

    while not vowel? word[i,1]
      if ( word[i,2] == 'qu')
        i += 2
      else
        i += 1
      end
    end
    word = word[i..-1] + word[0,i] + 'ay'
    if word =~ /[A-Z]/
    	word = (word.downcase).capitalize
    end
    if word =~ /[.]/
    	word.delete! "."
    	word << "."
    elsif word =~ /[,]/
    	word.delete! ","
    	word << ","
    elsif word =~ /[!]/
    	word.delete! "!"
    	word << "!"
    elsif word =~ /[?]/
    	word.delete! "?"
    	word << "?"
    elsif word =~ /[:]/
    	word.delete! ":"
    	word << ":"
    elsif word =~ /[;]/
    	word.delete! ";"
    	word << ";"
    end
    word
  end.join(' ')
end

def vowel? c
  @vowels.include? c
end