require 'pry'

class Car
  attr_reader :make, :model

  @@all = []

  def initialize(model: model, make: make)
    @make = make
    @model = model
    binding.pry
    @@all << self
  end

  def make
    @make[:make]
  end

  def model
    @model[:model]
  end

  def drive
    "VROOOOOOOOOOOOM!"
  end

  def self.all
    @@all
  end

end

# car = Car.new("volvo", "lightening")
# car.make
# #=> "volvo"
# car.model
# #=> "ligthening"

# car.drive
# # => "VROOOOOOOOOOOOM!"

# Car.all
#=> [car1, car2, car3]

# BONUS:

car = Car.new(make: "volvo", model: "lightening")

car.make
#=> "volvo"
car.model
#=> "ligthening"
