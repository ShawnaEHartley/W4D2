# can implement moves
# needs to know what direction to move (diag, hor/vert, both)
# 

HORIZONTAL_DIRS = [
    [-1, 0], ##vert up
    [1, 0], #vert down
    [0, -1], #hor left
    [0, 1]  #hor right
]

DIAGONAL_DIRS = [
    [-1, -1], # up left
    [-1, 1], #up right
    [1, -1], #down left
    [1, 1]  #down right
]

module Slideable

    def horizontal_dirs
        HORIZONTAL_DIRS
    end

    def diagonal_dirs
        DIAGONAL_DIRS
    end

    def moves(current_pos, color) #will rerturn an Array
        # based on the direction
        # return an array of possible moves for that piece
        moves = []
        until current_pos[0] < 0 || current_pos[0] > 7 || current_pos[1] < 0 || current_pos[1] > 7
            HORIZONTAL_DIRS.each do |dir|
                new_row = current_pos[0] + dir[0]
                new_col = current_pos[1] + dir[1]
                moves << [new_row, new_col]
            end
        end
        return moves
    end

    private
    def move_dirs
        raise "Make move_dirs in subclass"
    end

    def grow_unblock_moves_in_dir(dx, dy)

    end
end