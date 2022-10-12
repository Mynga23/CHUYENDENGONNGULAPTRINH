class Teacher

  attr_accessor :name_241, :age_241, :hometown_241, :id_241, :salary_241, :bonus_241, :penaty_241, :realSalary_241
  def initialize(id_241, name_241, age_241, hometown_241, salary,_241, penaty_241)
    self.name_241 = name_241
    self.age_241 = age_241.to_i
    self.hometown_241 = hometown_241
    self.id_241 = id_241
    self.salary_241 = salary_241.to_f
    self.bonus_241 = bonus_241.to_f
    self.penaty_241 = penaty_241.to_f
    # self.realSalary = realSalary
  end

  def display()
    puts "#{self.id_241} || #{self.name_241} || #{self.age_241} || #{self.hometown_241} || #{self.salary_241} || #{self.bonus_241} || #{self.penaty_241} || #{self.realSalary_241}"
  end
end