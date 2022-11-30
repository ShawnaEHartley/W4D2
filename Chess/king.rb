require_relative "stepable.rb"

class King < Piece
    inlcude Stepable
    
    def symbol
        @symbol = :K 
    end
end