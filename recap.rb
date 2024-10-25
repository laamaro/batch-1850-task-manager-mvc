class Person
  attr_accessor :name
  attr_reader :age

  def initialize(name, gender)
    @name = name
    @age = 0
    @gender = gender
    @dead = false
  end

  def aging
    @age += 1
  end

  def dead?
    @dead
  end

  def dead!
    @dead = true
  end

  def self.description
    p 'Uma pessoa é um ser humano!'
  end
end

maria = Person.new('Maria', 'female')
joao = Person.new('João', 'male')

maria.aging

112.times do
  joao.aging
end
joao.dead!

Person.description
