require './Student'

class AGrade < Student
  # attr_accessor : math, physics, chemistry
  # def initialize(math, physics, chemistry)
  #   self.math = math
  #   self.physics = physics
  #   self.chemistry = chemistry
  # end

  attr_accessor :GradeA_241
  # GradeA =  "Math -- Physics -- Chemistry"
  def initialize(id_241, name_241, address_241, priority_241)
    super(id_241, name_241, address_241, priority_241)
    self.GradeA_241 =  "Math -- Physics -- Chemistry" 
  end
  def display()
    super()
    puts "A Class: #{self.GradeA_241}"
  end
end