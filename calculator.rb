#Lucian Maly <lucian.maly@oracle.com>

def add(n1,n2)
  display(n1+n2)
end

def subtract(n1,n2)
  display(n1-n2)
end

def divide(n1,n2)
  display(n1/n2)
end

def multiply(n1,n2)
  display(n1*n2)
end

def power(n1,n2)
  display(n1**n2)
end

def display(result)
  puts sprintf("%.2f", result)
end

puts "Enter two numbers: "
n1 = gets.chomp.to_f
n2 = gets.chomp.to_f

print "#{n1} + #{n2} = "
print add(n1,n2)
print "#{n1} - #{n2} = "
print subtract(n1,n2)
print "#{n1} / #{n2} = "
print divide(n1,n2)
print "#{n1} * #{n2} = "
print multiply(n1,n2)
print "#{n1} ** #{n2} = "
print power(n1,n2)
