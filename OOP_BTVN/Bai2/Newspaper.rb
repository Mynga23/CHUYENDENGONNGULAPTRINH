require './Document'
class Newspaper < Document
  attr_accessor :dayIssue_241
  
  
  def initData(id_241, nxb_241, number_241, dayIssue_241)
    super(id_241, nxb_241, number_241)
    self.dayIssue_241 = dayIssue_241
  end
  
  def create()
    super()
    print "Day Issue : "
    self.dayIssue = gets.chop()
  end

  def display()
    print "Newspaper : "
    super.display()
    puts "\tDay Issue : #{self.dayIssue_241}"
  end
end