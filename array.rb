#Lucian Maly <lucian.maly@oracle.com>

#This is a shortcut to add each word of the sentence to an array as a global variable
#$arr = %w(The quick brown fox jumped over the lazy dog)
$arr = %w(The quick brown fox jumped over the lazy dog and of and of the two)

#Determining the frequency of the words, takes one argument "word"
def frequency(word)
  arr = $arr.select do |sample| #similar to find, returns/filters all of the elements, cannot be called word
    word == sample #we need to define condition in our block in which we are filtering our select
    end
    return arr.size #or simply arr.size - it shows how many times does the word occur
end
#p frequency('the') #calling the method to see how it works, it returns array with all of 'the' objects

frequencies = $arr.uniq.map do |word| #generate a new array which is converted/translated version of array
  [ word, frequency(word) ] #contains two element array - word and frequency of that word
end
#p frequencies #let's print it out to see how it looks - kind of like key/value pair

sorted = frequencies.sort do |a,b| #sort takes two arguments
  #puts "Comparing #{b[-1]} to #{a[-1]}" #you can see each of the frequencies is comparing one by one
  b [-1] <=> a [-1] #reverse ordering, highest first, we want to sort by last element of the array = frequency
end

sorted.each_with_index do |pair,index|
  puts "#{index + 1}: #{pair[0]} #{pair[-1]} occurrences"
end
