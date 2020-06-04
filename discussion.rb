require 'pry'

class FunnyBots  
 
    attr_accessor :name, :quotes  
 
    @@bots = []
 
    def initialize(name, quotes)
      @name = name
      @quotes = quotes
      @@bots << self
    end
 
   def random_quote
      self.quotes.sample
    end
 
    def self.bots
      @@bots
    end
 
end

binding.pry
 
  archer = FunnyBots.new("Archer", ["Q: How did the programmer die in the shower? A:He read the shampoo bottle instructions: Lather. Rinse. Repeat. ", "A UI is like a joke. If you have to explain it, it's not good.", "Q: How many programmers does it take to change a light bulb? A: None – It’s a hardware problem"] )