require './School'
require './Student'

student1 = Student.new('Nga', 10, 'Da Nang', 'A')
student2 = Student.new('Mynga', 20, 'Quang Ngai', 'C')
student3 = Student.new('Nganga', 20, 'Quang Binh', 'B')
student4 = Student.new('Tuongnga', 25, 'Quang Tri', 'A')

school = School.new()
school.addStudent(student1)
school.addStudent(student2)
school.addStudent(student3)
school.addStudent(student4)
# school.display()
# Hiện thị các học sinh 20 tuổi.
puts"===================HIEN THI THONG TIN================"
school.SeachStudent(20, '')
# các học sinh có tuổi là 25 và quê ở Hà Nội.
school.SeachStudent(25, 'Ha Noi')