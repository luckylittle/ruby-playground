#Lucian Maly <lucian.maly@oracle.com>

#Singleton class
#This ensures that only one instance of class can be created

require 'singleton'

class Area
include  Singleton

#Use either Area.rect or self.rect
def self.rect(length: 10.0, width: 10.0, units: "inches")
  area=length*width
  printf("The area of this rectangle is %.2f %s.\n",area,units)
end
end

Area.rect
