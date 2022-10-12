require './Oto'
require './Xemay'
require './Xetai'
require './QLPTGT'

ptManager = QLPTGT.new()

def initBasicData(ptManager)
    oto_241 = Oto.new()
    oto_241.initData('1', 'Tosiba', '2002', 'ab', '1000000000', 'HK000023', 'Do', '4', '321W', 'Xang', '5', '20/06/2002')
    xemay_241 = Xemay.new()
    xemay_241.initData('2', 'Hunganh', '2010', 'SH', '85000000', 'KB99097', 'Trang', '240W', '100ML')
    xetai_241 = Xetai.new()
    xetai_241.initData('3', 'YS', '2009', 'Xe ban tai', '150000000', '1626PGSHS', 'Trang', '450')
    ptManager.addPT(oto_241)
    ptManager.addPT(xemay_241)
    ptManager.addPT(xetai_241)

end
def addPTMethod(ptManager)
    choose = 0
    loop do
        puts "1. Oto!"
        puts "2. Xemay!"
        puts "3. Xetai!"
        puts "4. Thoat!"
        print "Nhap so: "
        choose = gets.chop()
        case choose
        when "1"
        puts "Them Oto"
        oto = Oto.new()
        
        ptManager.addPT(oto)
        when "2"
        puts "Add new Newspaper"
        xemay = Xemay.new()
        
        ptManager.addPT(xemay)
        when "3"
        puts "Add new Journal"
        xetai = Xetai.new()
        
        ptManager.addPT(xetai)
        when "4"
        system ("cls")
        break
        end
    end
end
def removePT(ptManager)
    print "Nhap id: "
    id = gets.chop()
    ptManager.removePT(id)
end
    

      
      loop do
        puts "1. Them phuong tien(Oto, Xe may, Xe tai)!"
        puts "2. Xoa phuong tien bang id"
        puts "3. Hien thi"
        puts "4. Tim kiem"
        puts "5. Exit!"
        puts "6. Clear Terminal!"
        print "Enter your choose: "
        choose = gets.chop()
        case choose
        when "1"
            initBasicData(ptManager)
        when "2"
          puts "Remove document with id!"
          removePT(ptManager)
        when "3"
            ptManager.display()
        when "4"
                puts ("a. Tim kiem Theo Hang San Xuat")
                puts ("b. Tim kiem Mau Xe,")
                puts ("c. Tim kiem Bien So Xe:")
                print "Tim Kiem PTGT PTGT (a - Hang San Xuat , b - Mau Xe, c - Bien So Xe): "
                choice_241 = gets.chomp()
                case choice_241
                    when "a"
                        puts ("Nhap Hang San Xuat muon tim: ")
                        hangsanxuat_241 = gets.chomp()
                        $ptManager.searchTransport("Hangsanxuat",hangsanxuat_241)
                    when "b"
                        puts ("Nhap Nhap Mau Xe muon tim: ")
                        mauxe_241 = gets.chomp()
                        $ptManager.searchTransport("Mauxe",mauxe_241)
                    when "c"
                        puts ("Nhap Nhap Bien So Xe muon tim: ")
                        bienso_241 = gets.chomp()
                        
                        $ptManager.searchTransport("Bienso",bienso_241)
                puts ("================================================================")
                end
            
        when "5" 
          break
          gets.chop()
        when "6"
          system ("cls")
        else 
          puts "Not Found Your Choose!"
        end
      end
