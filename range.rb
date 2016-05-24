#Lucian Maly <lucian.maly@oracle.com>

#Print every character from A-K
char = ('A'..'K')
char.each do |p| #or simply ('A'..'K').each { |char| puts char }
  puts p
end

#Method to determine if a given float numer is between two values
def between(val)
  if val <= 9.95 && val >= 4.45
    puts "Value #{val} is between 4.45 and 9.95"
  else puts "Value #{val} is not between 4.45 and 9.95"
  end
end
puts between(4.75)

#Print all multiples of 7 up to 140 using range
1.upto(20) do |n|
  result = n * 7
  puts result
end

#Method returns the intersection of two ranges as a range or nil if they do not overlap
def intersect?(range1,range2)
if range1.begin < range2.begin
  if range1.end < range2.begin
    nil
  else
    (range2.begin..range1.end)
 end
else
  if range2.end < range1.begin
    nil
  else
    (range1.begin..range2.end)
  end
end
end
puts "They overlap with: "
puts intersect?(10..25,20..32)
