require_relative "piece"
require_relative "../modules/slideable"

class Rook < Piece
   
    def symbol
        self.color == :white ? '♜' : '♖' 
    end

    include Slideable

    private
    def move_dirs
        horizontal_dirs
    end

end