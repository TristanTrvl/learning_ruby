#===================================
# CLASSES & MODULES
#===================================

# Declaring a class
class Dog
end
# Creating an instance of a class
sparky = Dog.new
# Declaring a module
module Speak
  def speak(sound)
    puts sound
  end
end
# Initialize is called when a new instance is created
class Human
  def initialize
    puts 'hello'
  end
end
# Add variable to an instance
class Man
  def initialize(size)
    @size = size
  end
end
# Define an instance method
class Kid
  def initialize(age)
    @age = age
  end

  def scream
    puts 'HAaaAAaaaAaa'
  end
end
# Getter / Setter
class Women
  def initialize(name)
    @name = name
  end

  def name
    self.name
  end

  def name=(name)
    self.name = name
  end
end
# Better Getter / Setter
class Girl
  attr_accessor :name

  def initialize(name)
    @name = name
  end
end
# Define a Class method
class Kido
  def initialize(age)
    @age = age
  end

  def self.scream
    puts 'HAaaAAaaaAaa'
  end
end