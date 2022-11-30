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

    def moves(current_pos, color)
        moves = []
        HORIZONTAL_DIRS.each do |dir|
            new_pos = current_pos
            until !pos_valid?(new_pos)
            new_pos = [(new_pos[0] + dir[0]), (new_pos[1] + dir[1])]
            moves << new_pos
            end
        end

        DIAGONAL_DIRS.each do |dir|
            new_pos = current_pos
            until !pos_valid?(new_pos)
            new_pos = [(new_pos[0] + dir[0]), (new_pos[1] + dir[1])]
            moves << new_pos
            end
        end

        return moves
    end

    def pos_valid?(pos)
        row, col = pos
        return false if row <= 0 || row >= 7 || col <= 0 || col >= 7
        true    
    end


    private
    def move_dirs
        raise "Make move_dirs in subclass"
    end

    def grow_unblock_moves_in_dir(dx, dy)

    end
end