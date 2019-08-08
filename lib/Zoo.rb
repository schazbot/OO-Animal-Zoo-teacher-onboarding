class Zoo

    @@zoos = []

    attr_accessor :name, :location

    def initialize(name, location)
        @name = name
        @location = location
        @@zoos << self
    end

    def self.all
        @@zoos
    end

    def self.find_by_location(location)
        Zoo.all.select{|zoo| zoo.location == location}
    end

    def animals
        Animal.all.select{|animal|animal.zoo == self}
    end
    
    def animal_species
        animals.map{|animal| animal.species}.uniq
    end
    
    def find_by_species(species)
        animals.select{|animal| animal.species == species}
    end 

    def animal_nicknames
        animals.map{|animal| animal.nickname}
    end


end



# Zoo.find_by_location should take in a location as an argument and return an array of all the zoos within that location.