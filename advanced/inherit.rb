class Vehicle
    attr_accessor :name, :brand, :model

    def initialize(name, brand, model)
        self.name = name
        self.brand = brand
        self.model = model
    end

    def turnOn
        puts "#{name} is ready to start the route!"
    end

    def honk
        puts 'Beep! Beep!'
    end
end

class Car < Vehicle
    def drive
        puts "#{name} starting the route!"
    end
end

class Motorcycle < Vehicle
    def pilot
        puts "#{name} starting the route!"
    end
end

civic = Car.new('Civic', 'Honda', 'SI')
civic.turnOn
civic.honk
civic.drive

mt = Motorcycle.new('MT-07', 'Yamaha', 'MT-07')
mt.turnOn
mt.honk
mt.pilot