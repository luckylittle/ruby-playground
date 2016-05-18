#Lucian Maly <lucian.maly@oracle.com>

class User
  attr_accessor :name, :email, :age #can be on multiple lines for readibility
  def initialize(name,email,age) #constructor starts here
   self.name = name #refers to current object
   self.email = email
   self.age = age
  end

  #Create a method on your user class to celebrate the user's birthday. The method should print "Happy Birthday" and increment age by 1
  def birthday!
    puts "Happy birthday #{name}"
    self.age += 1
  end
end

user = User.new('Jill', 'jill@example.com', 21)
puts user.name
puts user.email
puts user.age

user.birthday!
puts user.age
