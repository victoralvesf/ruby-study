class Car
    attr_accessor :name

    def on
        puts "The #{name ? name : 'car'} has been initiated."
    end

    def carName
        puts "The car\'s name is #{name}."
    end
end

civic = Car.new

civic.on

civic.name = 'Civic'
civic.on

civic.carName