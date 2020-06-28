require_relative "carta_baraja"

class Baraja
    attr_accessor :cards
    def initialize 
        kinds = ['C','D','E','T']
        
        @cards =[]
        kinds.each do |kind|
            13.times do |i|
                card_temp = Carta.new( i+1 , kind )
                @cards.push( card_temp )
            end
        end
    end

    def barajar
        @cards.shuffle
    end

    def sacar 
        @cards.pop
    end

    def repartir_mano 
        mano = []
        5.times do 
            mano.push(sacar)
        end
        mano
    end
end

baraja_1 = Baraja.new
pp baraja_1.repartir_mano
baraja_1.cards = baraja_1.barajar
pp baraja_1