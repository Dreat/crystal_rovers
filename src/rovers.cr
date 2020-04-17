require "rover"
class Store
    def self.rovers()
        @@rovers || (@@rovers = {} of String => Rover)
    end

    def self.create(name)
        @@rovers[name] = Rover.new()
    end

    def self.delete(name)
        @@rovers.delete(name)
    end

    def self.get(name)
        @@rovers[name]
    end

end
