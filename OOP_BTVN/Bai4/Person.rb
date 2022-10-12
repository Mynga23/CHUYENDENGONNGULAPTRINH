# Họ tên, Tuổi, Nghề nghiệp, số chứng minh nhân dân(duy nhất cho mỗi người)
class Person
  attr_accessor :name_241, :age_241, :job_241, :id_241
  def initialize(name_241, age_241, job_241, id_241)
    self.name_241 = name_241
    self.age_241 = age_241
    self.job_241 = job_241
    self.id_241 = id_241
  end

  def display()
    puts "#{self.id_241}: #{self.name_241}: #{self.age_241}: #{self.job_241}"
  end
end