require "byebug"
require_relative "piece.rb"

class Board

    def self.set_board

    end

    attr_reader :grid

    def initialize
        @grid = Array.new(8) {Array.new(8, nil)}

        # @grid[0] = [:R, :Kn, :B, :K, :Q, :B, :Kn, :R]
        # @grid[1] = [:P, :P, :P, :P, :P, :P, :P, :P]
        # @grid[6] = [:P, :P, :P, :P, :P, :P, :P, :P]
        # @grid[7] = [:R, :Kn, :B, :Q, :K, :B, :Kn, :R]

        # @grid.each_with_index do |row, idx_1|                     #black/white versions
        #     @grid.each_with_index do |ele, idx_2|
        #         case
        #         when ele == :R
        #             Rook.new(:W, self, [idx_1, idx_2])
        #         when ele == :Kn
        #             Knight.new(:W, self, [idx_1, idx_2])
        #         when ele == :B
        #             Bishop.new(:W, self, [idx_1, idx_2])
        #         when ele == :K
        #             King.new(:W, self, [idx_1, idx_2])
        #         when ele == :Q
        #             Queen.new(:W, self, [idx_1, idx_2])
        #         when ele == :P
        #             Pawn.new(:W, self, [idx_1, idx_2])
        #         end
        #     end
        # end


        (0..1).each do |idx1|
            (0..7).each do |idx2|
                @grid[idx1][idx2] = Piece.new(:W, self, [idx1, idx2])
            end
        end

        (6..7).each do |idx1|
            (0..7).each do |idx2|
                @grid[idx1][idx2] = Piece.new(:B, self, [idx1, idx2])
            end
        end


        # # self.set_board
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
        if self[start_pos] == nil
            raise "no piece at this position"
        end

        raise "not a valid position" if !pos_valid?(end_pos)        #will amend to IF your own piece is there, etc
        self[start_pos], self[end_pos] = self[end_pos], self[start_pos] 
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
# board.move_piece([0,0], [3,2])
