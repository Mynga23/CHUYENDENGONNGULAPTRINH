a = [12, 23, 10, 5]
puts "So nho nhat mang la: #{a.min}"
puts "So lon nhat mang la: #{a.max}"
puts "trung binh mang: #{a.reduce(:+).to_f / a.length}"