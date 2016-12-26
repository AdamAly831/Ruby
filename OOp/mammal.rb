 
class Mammal
  attr_accessor :health
  def initialize
    @health = 150
    self
  end
  
  def DisplayHealth
    puts "Health is: #{@health}"
    self
  end

end


# class Animal(object):
#     def __init__(self,name):
#         self.health = 100
#         self.name = name 

#     def walk(self):
#         self.health -= 1
#         return self

#     def run(self):
#         self.health -=5
#         return self

#     def displayHealth(self):
#         print 'My name is: ' + self.name
#         print 'I have: ' + str(self.health) + ' health'


# class Animal(object):
#     def __init__(self,name):
#         self.health = 100
#         self.name = name 

#     def walk(self):
#         self.health -= 1
#         return self

#     def run(self):
#         self.health -=5
#         return self

#     def displayHealth(self):
#         print 'My name is: ' + self.name
#         print 'I have: ' + str(self.health) + ' health'

# animal = Animal ('Bell')
# animal.walk().walk().walk().run().run().displayHealth()


# class Dog(Animal):
#     def __init__(self,name):
#         super(Dog, self). __init__(name)
#         self.health = 150

#     def pet (self):
#         self.health += 5
#         return self
# dog = Dog('beast')
# dog.walk().walk().walk().run().run().pet().displayHealth()