require './Document'
class Book < Document
  attr_accessor :author_241, :pageNumber_241

  # def initialize()
  # end
  def initData(id_241, nxb_241, number_241, author_241, pageNumber_241)
    super(id_241, nxb_241, number_241)
    self.author_241 = author_241
    self.pageNumber_241 = pageNumber_241
  end
  
  def create()
    super()
    print "Author: "
    self.author = gets.chop()
    print "page Number: "
    self.pageNumber = gets.chop()
  end
  
  def display()
    print "Book : "
    super.display()
    puts "\tAuthor : #{self.author_241} -- pageNumber : #{self.pageNumber_241}"
  end
end