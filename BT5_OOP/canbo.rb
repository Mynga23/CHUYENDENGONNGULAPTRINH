class Canbo
    def initialize (name,age, gender, address)
            @name = name.to_s
            @age= age.to_i
            @gender= gender.to_s
            @address= address.to_s
    end
    def hienthi
        puts "Name: #{@name}"
        puts "Age: #{@age}"
        puts "Gender: #{@gender}"
        puts "Address: #{@address}"
    end
end
class Nhanvien < Canbo
    attr_accessor :task
    def inputInfo(task)
        @task = task.to_s
    end
    def hienthi
        super
        puts "Task: #{@task}"
    end
end
class Congnhan < Canbo
    attr_accessor :lever
    def inputInfo(lever)
        @lever = lever.to_i
    end
    def hienthi
        super
        puts "Lever: #{@lever}"
    end
end
class Kysu < Canbo
    attr_accessor :branch
    def inputInfo(branch)
        @branch = branch.to_s
    end
    def hienthi
        super
        puts "Branch: #{@branch}"
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
end

office1 = Nhanvien.new("Nga","21", "Nu", "QuangBinh")
office1.inputInfo("Ketoan")

office2 = Congnhan.new("My Nga","21", "Nu", "DaNang")
office2.inputInfo("1")

office3 = Kysu.new("Nga Tuong","21", "Nu", "QuangNam")
office3.inputInfo("Daotao")

officeList = Quanlycanbo.new
officeList.inputoffice(office1)
officeList.inputoffice(office2)
officeList.inputoffice(office3)
officeList.outputInfo
 manager_officer = manager_officer.New
 while(true)
    puts ("Moi ban chon so:")
    puts ("1.Them moi can bo")
    puts ("2. Xem thong tin can bo")
    puts ("3. Tim kiem can bo")
    puts ("4. Thoat")
 end

