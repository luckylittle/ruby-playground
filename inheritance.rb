#Lucian Maly <lucian.maly@oracle.com>

#Create a product class with price and quality attributes
class Product
  attr_accessor :price, :quantity

  def initialize(price,quality)
    @price = price
    @quality = quality
  end

end

######################################
#Sublcass(extend) product with a wine class
class Wine < Product
  attr_accessor :price, :quantity, :alcohol, :variety

  def initialize
    @alcohol = alcohol
    @variety = variety
    super(price,quantity)
  end

end
