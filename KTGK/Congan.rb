class Congan
    attr_accessor :id_241, :hangsanxuat_241, :namsanxuat_241, :dongxe_241, :giaban_241, :bienso_241, :mauxe_241
    def initData(id_241, hangsanxuat_241, namsanxuat_241, dongxe_241, giaban_241, bienso_241, mauxe_241)
        @id_241 = id_241.to_i
        @Hangsanxuat_241 = hangsanxuat_241
        @namsanxuat_241 = namsanxuat_241.to_i
        @dongxe_241 = dongxe_241
        giaban_241 = giaban_241.to_f
        bienso_241 = bienso_241
        mauxe_241 = mauxe_241
    end
    def display()
        puts "- Id: #{@id_241} - Hang san xuat: #{@hangsanxuat_241}- Nam sx: #{@namsanxuat_241} - Dong xe: #{@dongxe_241} - Gia ban: #{@giaban_241} - Bien so: #{@bienso_241} - Mau xe: #{@mauxe_241}"
    end
end

