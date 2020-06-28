class Carta
    attr_accessor :number, :kind
    def initialize(number, kind)
        @number = number
        @kind = kind
    end
end

cards = []
kinds = ['C','D','E','T']
5.times{
    n = rand(1..13) 
    c = kinds.sample()
    
    cards.push( Carta.new(n, c) )
}
pp cards