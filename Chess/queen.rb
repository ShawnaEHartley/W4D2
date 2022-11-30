require_relative "slideable.rb"


#ref board for moves ie blocked pieces/edges
class Queen < Piece
    include Slideable
    

    def symbol
        @symbol = :Q 
    end

    private
    def move_dirs
        
    end
end