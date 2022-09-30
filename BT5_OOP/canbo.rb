class Canbo
    attr_accessor :name_241, :age_241, :gender_241, :address_241
    def initialize (name_241,age_241, gender_241, address_241)
            @name_241 = name_241.to_s
            @age_241= age_241.to_i
            @gender_241= gender_241.to_s
            @address_241= address_241.to_s
    end
    def hienthi
        puts "Name: #{@name_241}"
        puts "Age: #{@age_241}"
        puts "Gender: #{@gender_241}"
        puts "Address: #{@address_241}"
    end
end
class Nhanvien < Canbo
    attr_accessor :task_241
    def inputInfo(task_241)
        @task_241 = task_241.to_s
    end
    def hienthi
        super
        puts "Task: #{@task_241}"
    end
end
class Congnhan < Canbo
    attr_accessor :lever_241
    def inputInfo(lever_241)
        @lever_241 = lever_241.to_i
    end
    def hienthi
        super
        puts "Lever: #{@lever_241}"
    end
end
class Kysu < Canbo
    attr_accessor :branch_241
    def inputInfo(branch_241)
        @branch_241 = branch_241.to_s
    end
    def hienthi
        super
        puts "Branch: #{@branch_241}"
    end
end
class Quanlycanbo
    $array_offi = Array.new
    def inputoffice(object)
        $array_offi << object
    end
    def outputInfo
        $array_offi.each do |val|
            puts "#{val.hienthi}"
        end
    end
    def search(sname)
        $array_offi.each do |val|
            if(val.name_241 == sname)
                puts "#{val.hienthi}"
            end
        end
    end
end
    


officer1_241 = Nhanvien.new("Nga","21", "Nu", "QuangBinh")
officer1_241.inputInfo("Ketoan")

officer2_241 = Congnhan.new("MyNga","21", "Nu", "DaNang")
officer2_241.inputInfo("1")

officer3_241 = Kysu.new("NgaTuong","21", "Nu", "QuangNam")
officer3_241.inputInfo("Daotao")

manager_officer = Quanlycanbo.new
 while(true)
    puts ("1. Them Moi Can Bo")
    puts ("2. Xem Thong Tin Can Bo")
    puts ("3. Tim Kiem Can BO")
    puts ("4.Nhap bat ky de thoat")

    choose = gets.chomp().to_i
    case choose
    when 1 
        manager_officer.inputoffice(officer1_241)
        manager_officer.inputoffice(officer2_241)
        manager_officer.inputoffice(officer3_241)
        puts ("Them thanh cong")
        puts ("================================================================")
    when 2
        manager_officer.outputInfo
        puts ("================================================================")
    when 3
        puts ("Nhap ten: ")
        name = gets.chomp()
        manager_officer.search(name)
    else
        puts ("Khong hop le")
        break
    end
end

