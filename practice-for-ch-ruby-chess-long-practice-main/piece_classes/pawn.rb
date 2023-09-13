require_relative "piece"
class Pawn < Piece

    def symbol
        self.color == :white ? '♟' : '♙'
    end

end