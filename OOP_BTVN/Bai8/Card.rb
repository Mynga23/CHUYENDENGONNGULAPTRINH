require './Student'
class Card
  attr_accessor :id_241, :student_241, :borrowDate_241, :paymentDate_241, :bookId_241
  def initialize(id_241, student_241, borrowDate_241, paymentDate_241, bookId_241)
    self.id_241 = id_241
    self.student_241 = student_241
    self.borrowDate_241 = borrowDate_241
    self.paymentDate_241 = paymentDate_241
    self.bookId_241 = bookId_241
  end

  def display()
    puts "id card = #{self.id_241} student name = #{self.student_241.name}"
  end
end