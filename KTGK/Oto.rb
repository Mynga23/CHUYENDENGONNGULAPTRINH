require './Congan'
class Oto < Congan
    attr_accessor :sochongoi_241, :kieudongco_241, :nhienlieu_241, :sotuikhi_241, :ngaydangkiem_241
    def initData(id_241, hangsanxuat_241, namsanxuat_241, dongxe_241, giaban_241, bienso_241, mauxe_241, sochongoi_241, kieudongco_241, nhienlieu_241, sotuikhi_241, ngaydangkiem_241)
            super(id_241, hangsanxuat_241, namsanxuat_241, dongxe_241, giaban_241, bienso_241, mauxe_241)
        @sochongoi_241 = sochongoi_241.to_i
        @kieudongco_241 = kieudongco_241
        @nhienlieu_241 = nhienlieu_241
        @sotuikhi_241 = sotuikhi_241.to_i
        @ngaydangkiem_241 = ngaydangkiem_241
    end
    def display()
            print "Oto : "
            super.display()
            puts "- So cho ngoi: #{@sochongoi_241} - Kieu dong co: #{@kieudongco_241}- : Nhien lieu#{@nhienlieu_241} - So tui khi: #{@sotuikhi_241} - Ngay dang kiem: #{@ngaydangkiem_241} "
        end
    end