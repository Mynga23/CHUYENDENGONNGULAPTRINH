class SinhVien
    def initialaze(name,toan,ly,hoa,trungbinh)
        @@name = name
        @@toan = toan
        @@ly = ly
        @@hoa = hoa
        @trungbinh = trungbinh
    end

    def nhapThongTin
        puts ("Nhập Họ và Tên: ")
        @@name = gets
        puts ("Nhập điểm Toán: ")
        @@toan = gets.to_f
        while @@toan <= 0
            puts 'Vui lòng nhập số không âm'
            puts ("Nhập điểm Toán: ")
            
            STDOUT.flush
            @@toan = gets.to_f
          end
        puts ("Nhập điểm Lý: ")
        @@ly = gets.to_f
        while @@ly <= 0
            puts 'Vui lòng nhập số không âm'
            puts ("Nhập điểm Lý: ")
            
            STDOUT.flush
            @@ly = gets.to_f
          end
        puts ("Nhập điểm Hóa: ")
        @@hoa = gets.to_f
        while @@hoa <= 0
            puts 'Vui lòng nhập số không âm'
            puts ("Nhập điểm Hóa: ")
            
            STDOUT.flush
            @@hoa = gets.to_f
          end
    end

    def trungBinh
        @@trungbinh = (@@toan + @@ly + @@hoa) / 3.to_f
    end
    def hienthi
        puts ("Tên sinh viên là:  #{@@name}" )
        puts ("Điểm Toán là:  #{@@toan}" )
        puts ("Điểm Lý là:  #{@@ly}" )
        puts ("Điểm Hóa là:  #{@@hoa}" )
        puts ("Điểm Trung Bình là: " ), trungBinh
    end

    sinhVien = SinhVien.new
    sinhVien.nhapThongTin
    sinhVien.hienthi
end
