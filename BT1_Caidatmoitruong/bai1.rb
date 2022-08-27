
puts "1. Viết lệnh hiển thị 'Xin Chào' + tên SV + MSV" 
puts "2. Nhập 1 số từ bàn phím, in ra số đó"
puts "3. So sánh 2 giá trị nhập vào từ bàn phím, in ra giá trị lớn hơn"
puts " -----------------------------------------------------------------"
print "Hãy chọn một số: " 
site =  gets.chomp
case site
when "1"
    puts "Xin chào Tưởng Thị Mỹ Nga - 1911505310241"
when "2"
    print "Hãy nhập một số:"
    a = gets.to_i
    puts "Số đó là : #{a}"
when "3"
    puts"Nhập vào số thứ nhất: "
    b = gets.to_i
    puts "Nhập vào số thứ hai: "
    c = gets.to_i
    puts "Số lớn nhất trong 2 số :#{b > c ? b : c}"
else
    puts "Bạn đã nhập sai"
end
