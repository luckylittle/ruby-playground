#Lucian Maly <lucian.maly@oracle.com>

###################################
class Project
  attr_accessor :name, :budget
  attr_reader :members #only gives us getter method

 def initialize(name,budget)
   @name = name
   @budget = budget
   @members = []
 end

 def total_dayrate
   sum = 0
   @members.each do |member|
   sum += member.dayrate
   end
  sum
 end

 def sorted_members
   @members.sort do |a,b|
   a.dayrate <=> b.dayrate
  end
 end
end

###################################
class Project_manager
 attr_accessor :name, :salary

 def to_s
  "#{role} #{self.name} #{dayrate}"
 end

 def initialize(name,salary)
  @name = name
  @salary = salary
 end

 def role
  p "Project manager"
 end

 def dayrate
  salary.to_f / 210
 end
end

###################################
class Developer
 attr_accessor :name, :salary

 def to_s
  "#{role} #{self.name} #{dayrate}"
 end

 def initialize(name,salary)
  @name = name
  @salary = salary
 end

 def role
  p "Developer"
 end

 def dayrate
  salary.to_f / 210
 end
end

###################################
class Designer
 attr_accessor :name, :salary

 def to_s
  "#{role} #{self.name} #{dayrate}"
 end

 def initialize(name,salary)
  @name = name
  @salary = salary
 end

 def role
  p "Designer"
 end

 def dayrate
  salary.to_f / 210
 end
end

###################################
#Add to your project's team a PM, 3 Devels, 1 Designer
#by instantiating each of the types you defined
project = Project.new("Cafe website", 5000)
project.members << Project_manager.new('Dan', 100000)
project.members << Developer.new('Lucian', 106000)
project.members << Developer.new('Jonas', 105000)
project.members << Developer.new('Kevin', 105000)
project.members << Designer.new('Martin', 90000)

p project.members
p project.total_dayrate
p project.sorted_members
#It works, but there is a lot of repetition, this can be simplified - look at 'project_inherit.rb'
