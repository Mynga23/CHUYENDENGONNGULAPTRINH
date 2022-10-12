require './ManagerTeacher'
require './Teacher'

teacher1 = Teacher.new('1', 'Nga', '20', 'Phu yen', 10000, 1000, 100)

teacher2 = Teacher.new('2', 'My Nga', '19', 'Quang Binh', 10000, 1000, 100)

teacher3 = Teacher.new('3', 'Tuong Nga', '25', 'Nghe An', 10000, 1000, 100)

manager = ManagerTeacher.new()

manager.addTeacher(teacher1)
manager.addTeacher(teacher2)
manager.addTeacher(teacher3)
manager.cal_realSalary('1')
manager.display()