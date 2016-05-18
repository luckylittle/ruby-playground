#Lucian Maly <lucian.maly@oracle.com>

class User
  def initialize(name,email,age)
    self.name = name
    self.email = email
    self.age = age
  end

#Understanding attr_accessor:
  def name=(name)
    @name = name
  end

  def name
    @name
  end

  def email=(email)
    @email = email
  end

  def email
    @email
  end

  def age=(age)
    @age = age
  end

  def age
    @age
  end

end
