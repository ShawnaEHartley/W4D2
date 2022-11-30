class Board

    def self.set_board

    end


    def initialize
        @grid = Array.new(8) {Array.new(8, Piece.new)}
        # self.set_board
    end

    def [](pos)
        row, col = pos
        @grid[row][col]
    end

    def []=(pos, piece)
        row, col = pos
        @grid[row][col] = piece
    end

    def move_piece(color, start_pos, end_pos)
        if @grid[start_pos] == nil
            raise "no piece at this position"
        end

        raise "not a valid position" if !pos_valid?(end_pos)        #will amend to IF your own piece is there, etc
    end

    def pos_valid?(pos)
        row, col = pos
        return false if row < 0 || row > 7 || col < 0 || col > 7
    end

    def print_board
        @grid.each do |row|
            puts row
        end
    end

end

board = Board.new
Board.set_board
board.print_board