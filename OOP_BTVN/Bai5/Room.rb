class Room
  attr_accessor :price_241, :category_241

  def initialize(price_241, category_241)
    self.price_241 = price_241
    self.category_241 = category_241
  end

  def display()
    puts "Category: #{self.category_241} -- Price: #{self.price_241}"
  end    
end

class RoomA < Room 
  def initialize()
    super(500, "A")
  end
  def display()
    super
  end
end

class RoomB < Room 
  def initialize()
    super(300, "B")
  end
end

class RoomC < Room 
  def initialize()
    super(100, "C")
  end
  def display()
    super
  end
end