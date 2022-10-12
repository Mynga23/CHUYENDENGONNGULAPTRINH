class Student 
  attr_accessor :name_241, :age_241, :classs_241
  def initialize(name_241, age_241, classs_241)
    self.name_241 = name_241
    self.age_241 = age_241
    self.classs_241 = classs_241
  end

  def display()
    puts "#{self.name_241} || #{self.age_241} || #{self.classs_241}"
  end
end