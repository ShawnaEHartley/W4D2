# require_relative "bishop.rb"
# require_relative "king.rb"
# require_relative "knight.rb"
# require_relative "pawn.rb"
# require_relative "queen.rb"
# require_relative "rook.rb"

class Piece

    
    def initialize(color, board, pos)
        @color = color                      #symbol
        @board = board
        @pos = pos                            #ivar is array
    end

    def moves                 # rt array of possible move coordinates
        # possible_moves = []
        # current_pos = @pos

    end

    def pos
        @pos
    end

    def to_s

    end

    def empty?
        # boolean if null piece
    end
    
    def valid_moves
        # this is an array of all possible move positions
    end

    def pos=(val) . #taken in array and set new coordinates
        self.pos = val
    end

    def color
        @color
    end

    private
    def move_into_check?(end_pos)

    end
end