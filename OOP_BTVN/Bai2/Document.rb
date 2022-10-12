class Document
  attr_accessor :id_241, :nxb_241, :number_241
  
  def initData(id_241, nxb_241, number_241)
    self.id_241 = id_241
    self.nxb_241 = nxb_241
    self.number_241 = number_241
  end

  def create()
    print "id: "
    self.id = gets.chop()
    print "nxb: "
    self.nxb = gets.chop()
    print "number: "
    self.number = gets.chop()
  end
  
  def display()
    puts "Id : #{self.id_241} -- nxb: #{self.nxb_241} -- number: #{self.number_241}"
  end
end