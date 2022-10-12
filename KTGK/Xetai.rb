require './Congan'
class Xetai < Congan
    attr_accessor :trongtai_241
    def initData  (id_241, hangsanxuat_241, namsanxuat_241, dongxe_241, giaban_241, bienso_241, mauxe_241, trongtai_241)
        super(id_241, hangsanxuat_241, namsanxuat_241, dongxe_241, giaban_241, bienso_241, mauxe_241)
        @trongtai_241 = trongtai_241.to_i
    end
    def display()
            print "Xetai : "
            super.display()
            puts "- Trong tai: #{@trongtai_241} "
        end
    end