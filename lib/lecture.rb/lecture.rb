class Animal
    attr_accessor :species

    def initialize (species)
        @species = species
    end
end

lil_bub = Animal.new("cat")