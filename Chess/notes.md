        zero = [:R, :Kn, :B, :K, :Q, :B, :Kn, :R]
        pawns = [:P, :P, :P, :P, :P, :P, :P, :P]
        seven = [:R, :Kn, :B, :Q, :K, :B, :Kn, :R]

                @grid.each_with_index do |row, i|
            if i == 0
                row = zero
            elsif i == 7
                row = seven
            elsif i == 1 || i == 6
                row = pawn
            end
        end
        