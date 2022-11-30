require_relative "slideable.rb"


#ref board for moves ie blocked pieces/edges
class Rook < Piece
    include Slideable
    

    def symbol
        @symbol = :R  
    end

    private
    def move_dirs
        HORIZONTAL_DIRS
    end
end