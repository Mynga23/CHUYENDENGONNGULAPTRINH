
  canh1 = 3
  canh2 = 4
  canh3 = 5
  
  def isTriangle(canh1 = 0, canh2 = 0, canh3 = 0)
      if canh1 == 0 || canh2 == 0 || canh3 == 0
          return false
      end
      if canh1 + canh2 <= canh3
          return false
      end
      if canh1 + canh3 <= canh2
          return false
      end
      if canh2+ canh3 <= canh1
          return false
      end
      return true
  end
  
  check = isTriangle(canh1,canh2,canh3)
  
  if check
      p = (canh1 + canh2 + canh3) / 2.to_f
      chuvi = canh1 + canh2 + canh3
      dientich = Math.sqrt(p * (p - canh1) * (p - canh2) * (p - canh3))
      puts "chu vi cua tam giac la: #{chuvi} "
      puts "dien tich cua tam giac la:  #{dientich}"
  end