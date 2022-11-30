require_relative "stepable.rb"

class Knight < Piece
    include Stepable

    def symbol
        @symbol = :Kn
    end
    
end