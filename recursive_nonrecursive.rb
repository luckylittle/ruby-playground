#Lucian Maly <lucian.maly@oracle.com>

#Write a piece of code to turn a recursive operation into non-recursive one

def downto_recursive
  num = 0
  11.downto(1) do |num|
    num -= 1
    puts num
  end
end

puts 'Recursive method of 10 down to 0:'
downto_recursive

def downto_nonrecursive
  num = 10
  puts num
  num = num -1
  puts num
  num = num -1
  puts num
  num = num -1
  puts num
  num = num -1
  puts num
  num = num -1
  puts num
  num = num -1
  puts num
  num = num -1
  puts num
  num = num -1
  puts num
  num = num -1
  puts num
  num = num -1
  puts num
end

puts 'Non-recursive method of 10 down to 0:'
downto_nonrecursive
