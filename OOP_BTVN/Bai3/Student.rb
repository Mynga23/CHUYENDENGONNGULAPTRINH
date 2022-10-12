class Student
  attr_accessor :id_241, :name_241, :address_241, :priority_241
  
  def initialize(id_241, name_241, address_241, priority_241)
    self.id_241 = id_241
    self.name_241 = name_241
    self.address_241 = address_241
    self.priority_241 = priority_241
  end

  def display()
    puts "id: #{self.id_241} -- name: #{self.name_241} -- address: #{self.address_241} -- priority -- #{self.priority_241}"
  end
end