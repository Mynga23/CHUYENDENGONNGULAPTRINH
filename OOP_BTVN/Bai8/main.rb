require './ManagerCard'
require './Card'
require './Student'

student1 = Student.new('name1', 'age', 'classs')
student2 = Student.new('name2', 'age', 'classs')
student3 = Student.new('name3', 'age', 'classs')

card = Card.new(1, student1, 'borrowDate', 'paymentDate', 'bookId')
card1 = Card.new(2, student2, 'borrowDate', 'paymentDate', 'bookId')
card2 = Card.new(3, student3, 'borrowDate', 'paymentDate', 'bookId')
managerCard = ManagerCard.new()
managerCard.addCard(card)
managerCard.addCard(card1)
managerCard.addCard(card2)

managerCard.display()