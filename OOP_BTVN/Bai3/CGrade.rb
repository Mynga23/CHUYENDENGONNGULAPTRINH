require './Student'

class CGrade < Student
  attr_accessor :GradeC_241
  def initialize(id_241, name_241, address_241, priority_241)
    super(id_241, name_241, address_241, priority_241)
    self.GradeC_241 = "Literary  -- History -- Geography"
  end

  def display()
    super()
    puts "C Class: #{self.GradeC_241}"
  end
end