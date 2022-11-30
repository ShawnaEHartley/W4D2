require_relative "bishop.rb"
require_relative "king.rb"
require_relative "knight.rb"
require_relative "pawn.rb"
require_relative "queen.rb"
require_relative "rook.rb"

class Piece

    
    def initialize  #(color, board, pos)
        @color = color                      #symbol
        @board = board
        @pos = pos                            #ivar is array
    end

    def moves                 # rt array of possible move coordinates
        possible_moves = []
        current_pos = @pos

    end

    def pos
        row, col = @pos
        [row][col]
    end

    def to_s

    end

    def empty?

    end
    
    def valid_moves

    end

    def pos=(val)
        # row,col = val

    end

    def Symbol

    end

    private
    def move_into_check?(end_pos)

    end
end