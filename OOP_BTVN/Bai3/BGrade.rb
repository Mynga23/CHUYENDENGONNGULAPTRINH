require './Student'
class BGrade < Student
  attr_accessor :GradeB_241
  def initialize(id_241, name_241, address_241, priority_241)
    super(id_241, name_241, address_241, priority_241)
    self.GradeB_241 = "Math -- Chemistry -- Biological"
  end
  def display()
    super()
    puts "B Class: #{self.GradeB_241}"
  end
end