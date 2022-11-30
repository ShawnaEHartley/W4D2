        zero = [:R, :K, :B, :K, :Q, :B, :K, :R]
        pawns = [:P, :P, :P, :P, :P, :P, :P, :P]
        seven = [:R, :K, :B, :Q, :K, :B, :K, :R]

                @grid.each_with_index do |row, i|
            if i == 0
                row = zero
            elsif i == 7
                row = seven
            elsif i == 1 || i == 6
                row = pawn
            end
        end
        