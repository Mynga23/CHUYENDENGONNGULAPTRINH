class Human
    def initialize(name, gender, age, height, weight, phone, email, nation)
        @name = name.to_s
        @gender = gender.to_s
        @age = age.to_i
        @height = height.to_f
        @weight = weight.to_f
        @phone = phone.to_i
        @email = email.to_s
        @nation = nation.to_s
    end
    def display
        puts "- Name: #{@name} - Gender: #{@gender}- Age: #{@age} - Height: #{@height} - Weight: #{@weight} - Phone: #{@phone} - Email: #{@email} - Nation: #{@nation}"

    end
end
class Student < Human 
    attr_accessor :studentId, :grade1, :grade2, :grade3
    def inputInfo(studentId, grade1, grade2, grade3)
        @studentId = studentId.to_i
        @grade1 = grade1.to_f
        @grade2 = grade2.to_f
        @grade3 = grade3.to_f
    end

    def avgScore()
       (@grade1 + @grade2 + @grade3) / 3
    end

    def display
        super
        puts "- StudentId: #{@studentId} - GRADE: #{avgScore()}" 
    end
end

#Tạo các đối tượng Student
svien1 = Student.new("Nga","Nu","21","150","45","123456789","Nganga@email.com", "Kinh")
svien1.inputInfo("191505310241","6","10","9.7")

svien2 = Student.new("MyNga","Nu","21","168","46","123456789","Mynga@email.com", "Tay")
svien2.inputInfo("191505310241","9","8","10")

svien3 = Student.new("TuongNga","Nu","21","155","47","123456789","tuongnga@email.com", "Kinh")
svien3.inputInfo("191505310241","10","9","8")

#Gán các đối tượng Student vào 1 danh sách
studentList = []
studentList << svien1
studentList << svien2
studentList << svien3

puts "Danh sách sinh viên trước khi sắp xếp"
studentList.each do |val|
    puts "#{val.display}"
end

#Sắp xếp danh sách sinh viên giảm dần theo điểm trung bình
list = studentList.sort_by { |stu| -stu.avgScore() }
puts "****************************************************************************************************************************"
puts "Danh sách sinh viên sau khi sắp xếp"
list.each do |val|
    puts "#{val.display}"
end