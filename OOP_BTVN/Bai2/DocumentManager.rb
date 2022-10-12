class DocumentManager
  attr_accessor :DocumentList
  DocumentList = []
  def initialize()
  end

  def addDocument(document)
    DocumentList << document
  end

  def removeDocument(code)
    DocumentList.delete_if { |x| x.id_241 == code }
    display()
  end

  def seachDoc(code, type)
    DocumentList.each do |document| 
      if document.class.name == type && document.id_241 == code
        document.display()
      end
    end
  end
  def display()
    puts "\n================= Document List ================="
    DocumentList.each do |document| document.display()
    end
    puts "\n====================== End ======================"
  end
end