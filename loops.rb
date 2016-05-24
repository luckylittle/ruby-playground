#Lucian Maly <lucian.maly@oracle.com>

#Sum numbers from 1 to 100
result = 0
1.upto(100) do |n| #pass each of the numbers 1 to 100 into a block n
  result += n #add n onto result
  end
puts result

#Given an array containing 10 items, delete first item and print it, repeat 3 times
arr = [1,2,3,4,5,6,7,8,9,10]
4.times do
  puts arr.delete_at(0)
end
puts "Array is now:"
puts arr
