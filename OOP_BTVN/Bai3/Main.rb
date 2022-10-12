require './AGrade'
require './BGrade'
require './CGrade'
require './ManagerCandidate'
studentA = AGrade.new('1', 'My Nga', 'Quang Binh', 'Khu vuc 3')
studentB = BGrade.new('24', 'Nga Tuong', 'Quang Nam', 'Khu vuc 1')
studentC = CGrade.new('3', 'Tuong Thi My Nga', 'Da Nang', 'Khu vuc 4')
# studentA.display()
managerCandidate = ManagerCandidate.new()
managerCandidate.addCandidate(studentA)
managerCandidate.addCandidate(studentB)
managerCandidate.addCandidate(studentC)
managerCandidate.display()
managerCandidate.Seach('1')