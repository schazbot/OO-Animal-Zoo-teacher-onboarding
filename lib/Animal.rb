class Animal
  @@animals = []

  attr_reader :species, :nickname, :zoo
  attr_accessor :weight

  def initialize(species, weight, nickname, zoo)
    @species = species
    @weight = weight
    @nickname = nickname
    @zoo = zoo
    @@animals << self
  end

  def self.all
    @@animals
  end

  def self.find_by_species(species)
    Animal.all.select { |animal| animal.species == species }
  end
end
