require './DocumentManager'
require './Book'
require './journal'
require './Newspaper'

def initBasicData(docManager)
  book = Book.new()
  book.initData('1', 'ruby', '3', 'learing ruby tutorial', '120')
  journal = Journal.new()
  journal.initData('11', 'journal', '31', '32', '12')
  newspaper = Newspaper.new()
  newspaper.initData('3', 'newspaper', '10', '12/02/2021')
  docManager.addDocument(book)
  docManager.addDocument(journal)
  docManager.addDocument(newspaper)
  
end
def  addDocumentMethod(docManager)
  choose = 0
  loop do
    puts "1. Book!"
    puts "2. Newspaper!"
    puts "3. Journal!"
    puts "4. Go Back!"
    print "Enter your choose: "
    choose = gets.chop()
    case choose
    when "1"
      puts "Add new book"
      doc = Book.new()
      doc.create()
      docManager.addDocument(doc)
    when "2"
      puts "Add new Newspaper"
      doc = Newspaper.new()
      doc.create()
      docManager.addDocument(doc)
    when "3"
      puts "Add new Journal"
      doc = Journal.new()
      doc.create()
      docManager.addDocument(doc)
    when "4"
      system ("cls")
      break
    end
  end
end
def removeDoc(docManager)
  print "Enter your document id: "
  id = gets.chop()
  docManager.removeDocument(id)
end
docManager = DocumentManager.new()
initBasicData(docManager)
loop do
  puts "1. Add a new document(book, newspaper, journal)!"
  puts "2. Remove document with id!"
  puts "3. Show information document!"
  puts "4. Seach document with type: Book, Newspaper, Journal!"
  puts "5. Exit!"
  puts "6. Clear Terminal!"
  print "Enter your choose: "
  choose = gets.chop()
  case choose
  when "1"
    puts "Add a new document!"
    addDocumentMethod(docManager)
  when "2"
    puts "Remove document with id!"
    removeDoc(docManager)
  when "3"
    docManager.display()
  when "4"
    puts "Seach document with type: Book, Newspaper, Journal!"
    puts "1. Search By Book"
    puts "2. Search By Newspaper"
    puts "3. Search By Journal"
    # puts "4. All Type Document"

    puts "Enter your type: "
    typeDoc = gets.chop()
    print "Enter your id: "
    idSearch = gets.chop()
    case typeDoc
    when "1"
      docManager.seachDoc(idSearch, 'Book')
    when "2"
      docManager.seachDoc(idSearch, 'Newspaper')
    when "3"
      docManager.seachDoc(idSearch, 'Journal')
    # else
    end
  when "5" 
    break
    gets.chop()
  when "6"
    system ("cls")
  else 
    puts "Not Found Your Choose!"
  end
end