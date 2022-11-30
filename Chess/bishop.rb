require_relative "slideable.rb"

#ref board for moves ie blocked pieces/edges
class Bishop < Piece
    include Slideable
    

    def symbol
        @symbol = :B 
    end

    private
    def move_dirs
        
    end
end