# Với mỗi cá nhân cần quản lý các thông tin sau: Họ tên, tuổi, số chứng minh nhân dân
require './Room'
require 'date'

class Person
  attr_accessor :name_241, :age_241, :id_241, :room_241, :checkin_date_241, :checkout_date_241, :numberRent_241, :rent_241
  def initData(id_241, name_241, age_241, room_241, checkin_date_241, checkout_date_241)
    self.name_241 = name_241
    self.age_241 = age_241
    self.id_241 = id_241
    self.room_241 = room_241
    # self.numberRent = numberRent
    self.checkin_date_241 = Date.parse(checkin_date_241)
    self.checkout_date_241 = Date.parse(checkout_date_241)
  end

  def create()
    print "id: "
    self.id = gets.chop()
    print "name: "
    self.name = gets.chop()
    print "age: "
    self.age = gets.chop()
    puts "Choose room: "
    puts "1. Room A || 2. Room B || 3. Room C"
    print "Enter your choose: "
    choose = gets.chop()
    case choose
    when "1"
      self.room = RoomA.new()
    when "2"
      self.room = RoomB.new()
    when "3"
      self.room = RoomC.new()
    end
    print "check-in date(yyyy/mm/dd): "
    self.checkin_date_241 = Date.parse(gets.chop())
    print "check-out date(yyyy/mm/dd): "
    self.checkout_date_241 = Date.parse(gets.chop())

  end

  def display()
    puts "id: #{self.id_241} || name: #{self.name_241} || age: #{self.age_241}"
    puts "\troom: #{self.room.category}(#{self.room_241.price}$) "
    puts "\tcheck-in data: #{self.checkin_date_241} || check-out date: #{self.checkout_date_241}"
    if self.rent_241 != nil 
      puts "\tRent : #{self.rent_241}"
    else 
      puts "\tRent : Incomplete!"
    end
  end
end