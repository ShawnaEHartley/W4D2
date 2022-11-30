# can implement moves
# needs to know what direction to move (diag, hor/vert, both)
# 

HORIZONTAL_DIRS [
    [-1, 0], ##vert up
    [1, 0], #vert down
    [0, -1], #hor left
    [0, 1]  #hor right
]

DIAGONAL_DIRS [
    [-1, -1], # up left
    [-1, 1], #up right
    [1, -1], #down left
    [1, 1]  #down right
]

module Slideable



    def moves(current_pos, color) #will rerturn an Array
        arrr = []
        # based on the direction
        # return 

    end

    private
    def move_dirs
        raise "Make move_dirs in subclass"
    end
end