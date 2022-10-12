require './Document'
class Journal < Document
  attr_accessor :issueNumber_241, :monthIssue_241
  def initData(id_241, nxb_241, number_241, issueNumber_241, monthIssue_241)
    super(id_241, nxb_241, number_241)
    self.issueNumber_241 = issueNumber_241
    self.monthIssue_241 = monthIssue_241
  end

  def create()
    super()
    print "Issue Number"
    self.issueNumber = gets.chop()
    print "Month Number"
    self.monthIssue = gets.chop()
  end
  def display()
    print "Journal : "
    super.display()
    puts "\tIssue Number : #{self.issueNumber_241} -- Month Issue : #{self.monthIssue_241}"
  end
end