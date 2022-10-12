require './Person'
require './Hotel'

# puts Time.now.strftime("%d/%m/%Y")

def initDataBasic(hotel)
  # id, name, age, room, check-in date, check-out date
  person1 = Person.new()
  person1.initData('1', 'My Nga', '21', RoomA.new(), '2022-10-05', '2022-10-08')
  person2 = Person.new()
  person2.initData('2', 'Customer B', '21', RoomB.new(),'2022-10-06', '2022-10-06')
  person3 = Person.new()
  person3.initData('3', 'Customer C', '22', RoomC.new(),'2022-10-06', '2022-10-06')

  hotel.addPerson(person1)
  hotel.addPerson(person2)
  hotel.addPerson(person3)
end

# def menu()
hotel = Hotel.new()
initDataBasic(hotel)

hotel.getYearCheckinDate()
