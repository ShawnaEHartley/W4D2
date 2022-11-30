require_relative "piece.rb"

class Board

    def self.set_board

    end


    def initialize
        @grid = Array.new(8) {Array.new(8, nil)}

        (0..1).each do |idx1|
            (0..7).each do |idx2|
                @grid[idx1][idx2] = Piece.new
            end
        end

        (6..7).each do |idx1|
            (0..7).each do |idx2|
                @grid[idx1][idx2] = Piece.new
            end
        end


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

    def move_piece(start_pos, end_pos)
        if @grid[start_pos] == nil
            raise "no piece at this position"
        end

        raise "not a valid position" if !pos_valid?(end_pos)        #will amend to IF your own piece is there, etc

        @grid[start_pos], @grid[end_pos] = @grid[end_pos], @grid[start_pos]

    end

    def pos_valid?(pos)
        row, col = pos
        return false if row < 0 || row > 7 || col < 0 || col > 7
        true    
    end

    def print_board
        @grid.each do |row|
            puts row
        end
    end

end

# board = Board.new
# Board.set_board
# board.print_board