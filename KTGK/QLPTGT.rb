class QLPTGT
    attr_accessor :QLPTGTList
    QLPTGTList = []
    def initialize()
    end
    def addPT(phuongtien_241)
        QLPTGTList << phuongtien_241
    end
    def removePT(code_241)
        QLPTGTList.delete_if { |x| x.id == code }
        display()
    end
    def searchTransport(type,keyword)
        case type
            when "Hangsanxuat"
                $QLPTGTList.each do |val_241|
                    if(val_241.hangsanxuat_241 == keyword) then 
                       puts("#{val_241.display}")
                    end
                end
            when "Mauxe"
                $QLPTGTList.each do |val_241|
                    if(val_241.mauxe_241 == keyword) then 
                       puts("#{val_241.display}")
                    end
                end
            when "bienso"
                $QLPTGTList.each do |val_241|
                    if(val_241.bienso_241 == keyword) then 
                       puts("#{val_241.display}")
                    end
                end
        end 
    end
  