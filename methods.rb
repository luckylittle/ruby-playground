#Lucian Maly <lucian.maly@oracle.com>

#cleaning vars
num1,num2,num3,temp,int1,int2=''

def my_method1(num1,num2)
 num1+num2
end

def my_method2(num1,num2,num3)
  num1*num2*num3
end

def my_method3(temp)
  print "The temperature outside is #{temp}"
  print "It's hot" if temp > 30
end

def divide(int1, int2)
   int1.to_f / int2.to_f #casting
end

puts my_method1(10,20)
puts my_method2(4,6,78)
puts my_method3(39)
puts divide(8,3)
