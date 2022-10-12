class Student 
  attr_accessor :name_241, :age_241, :hometown_241, :classs_241

  def initialize(name_241, age_241, hometown_241, classs_241)
    self.name_241 = name_241
    self.age_241 = age_241
    self.hometown_241 = hometown_241
    self.classs_241 = classs_241
  end

  # hiển thị thông tin của mỗi học sinh.
  def display()
    puts " Ten: #{self.name_241} || Tuoi:  #{self.age_241} || Noi o:  #{self.hometown_241} || Lop: #{self.classs_241}"
  end
end