require_relative "piece"
require_relative "../modules/slideable"

class Queen < Piece
   
    def symbol
        self.color == :white ? '♛' : '♕'
    end

    include Slideable

    private
    def move_dirs
        horizontal_dirs
        diagonal_dirs
    end

end