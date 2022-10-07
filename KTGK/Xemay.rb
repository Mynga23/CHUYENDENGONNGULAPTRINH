require './Congan'
class Xemay < Congan
    attr_accessor :congsuat_241, :dungtichbinhxang_241
    def initialize  (id_241, hangsanxuat_241, namsanxuat_241, dongxe_241, giaban_241, bienso_241, mauxe_241, congsuat_241, dungtichbinhxang_241)
        super(id_241, hangsanxuat_241, namsanxuat_241, dongxe_241, giaban_241, bienso_241, mauxe_241)
        @congsuat_241 = congsuat_241
        @dungtichbinhxang_241 = dungtichbinhxang_241
    end
    def display()
            print "Xe may : "
            super.display()
            puts "- Cong suat: #{@congsuat_241} - Dung tich binh xang: #{@dungtichbinhxang_241} "
        end
    end