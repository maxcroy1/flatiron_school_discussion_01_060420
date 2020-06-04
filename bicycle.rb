require 'pry'

class Bicycle
 
    attr_reader :gears, :style
    attr_accessor :tire

    @@bikes = []
   
    def initialize(tire, gears, style)
        @tire = tire
        @gears = gears
        @style = style
        @@bikes << self
    end

    def self.bikes
        @@bikes
    end

    def self.styles
        @@bikes.map do |bike|
            bike.style
        end
    end
   
end

binding.pry
   
  mongoose = Bicycle.new(4, 10, "BMX")

  mongoose.tire = 5
  mongoose.gears
  Bicycle.bikes
  Bicycle.styles